#!/usr/bin/python
# -*- coding: utf-8 -*-
# GNU General Public License v3.0+ (see LICENSES/GPL-3.0-or-later.txt or https://www.gnu.org/licenses/gpl-3.0.txt)
# SPDX-License-Identifier: GPL-3.0-or-later

from __future__ import annotations

DOCUMENTATION = r"""
module: forgejo_release
short_description: Interact with Forgejo/Codeberg Releases
description:
  - Fetch metadata about releases on a Forgejo instance (Codeberg, self-hosted Forgejo, or Gitea, which share the same API).
options:
  server_url:
    description:
      - Base URL of the Forgejo instance.
    type: str
    default: https://codeberg.org
  owner:
    description:
      - The account or organization that owns the repository.
    type: str
    required: true
  repo:
    description:
      - Repository name.
    type: str
    required: true
  token:
    description:
      - API token for authenticating. Required for private repositories or to avoid rate limiting.
    type: str
  action:
    description:
      - Action to perform.
    type: str
    required: true
    choices: ['latest_release', 'create_release']
  tag:
    description:
      - Tag name when creating a release. Required when using O(action=create_release).
    type: str
  target:
    description:
      - Target commitish (branch or commit SHA) of release when creating a release.
    type: str
  name:
    description:
      - Name of release when creating a release. Defaults to O(tag) if not set.
    type: str
  body:
    description:
      - Description of the release when creating a release.
    type: str
  draft:
    description:
      - Sets if the release is a draft or not.
    type: bool
    default: false
  prerelease:
    description:
      - Sets if the release is a prerelease or not.
    type: bool
    default: false
  validate_certs:
    description:
      - Whether to validate TLS certificates of the server_url.
    type: bool
    default: true

author:
  - "Bruno Paz"
"""

EXAMPLES = r"""
- name: Get latest release of a public repository on Codeberg
  forgejo_release:
    owner: forgejo
    repo: forgejo
    action: latest_release

- name: Get latest release from a self-hosted Forgejo instance
  forgejo_release:
    server_url: https://git.example.com
    owner: someorg
    repo: somerepo
    token: "{{ forgejo_token }}"
    action: latest_release

- name: Create a new release
  forgejo_release:
    server_url: https://git.example.com
    owner: someorg
    repo: somerepo
    token: "{{ forgejo_token }}"
    action: create_release
    tag: v1.0.0
    target: main
    name: v1.0.0
    body: Some description
"""

RETURN = r"""
tag:
  description: Version of the created/latest release.
  type: str
  returned: success
  sample: v1.1.0
"""

import json

from ansible.module_utils.basic import AnsibleModule
from ansible.module_utils.urls import fetch_url


def api_request(module, method, path, data=None):
    server_url = module.params["server_url"].rstrip("/")
    token = module.params["token"]

    headers = {"Content-Type": "application/json", "Accept": "application/json"}
    if token:
        headers["Authorization"] = f"token {token}"

    payload = json.dumps(data) if data is not None else None

    resp, info = fetch_url(
        module,
        f"{server_url}/api/v1{path}",
        method=method,
        data=payload,
        headers=headers,
    )
    status = info.get("status", -1)

    if status == 404:
        return None, status

    if status < 0 or status >= 300:
        module.fail_json(msg=f"Forgejo API error ({status}): {info.get('body') or info.get('msg')}")

    body = resp.read() if resp else b""
    return (json.loads(body) if body else None), status


def main():
    module = AnsibleModule(
        argument_spec=dict(
            server_url=dict(type="str", default="https://codeberg.org"),
            owner=dict(type="str", required=True),
            repo=dict(type="str", required=True),
            token=dict(type="str", no_log=True),
            action=dict(type="str", required=True, choices=["latest_release", "create_release"]),
            tag=dict(type="str"),
            target=dict(type="str"),
            name=dict(type="str"),
            body=dict(type="str"),
            draft=dict(type="bool", default=False),
            prerelease=dict(type="bool", default=False),
            validate_certs=dict(type="bool", default=True),
        ),
        supports_check_mode=True,
        required_if=[("action", "create_release", ["tag"])],
    )

    owner = module.params["owner"]
    repo = module.params["repo"]
    action = module.params["action"]

    if action == "latest_release":
        release, status = api_request(module, "GET", f"/repos/{owner}/{repo}/releases/latest")
        if release:
            module.exit_json(tag=release["tag_name"])
        else:
            module.exit_json(tag=None)

    if action == "create_release":
        tag = module.params["tag"]

        existing, status = api_request(module, "GET", f"/repos/{owner}/{repo}/releases/tags/{tag}")
        if existing:
            module.exit_json(changed=False, msg=f"Release for tag {tag} already exists.", tag=existing["tag_name"])

        if module.check_mode:
            module.exit_json(changed=True, tag=tag)

        release, status = api_request(
            module,
            "POST",
            f"/repos/{owner}/{repo}/releases",
            data={
                "tag_name": tag,
                "target_commitish": module.params["target"],
                "name": module.params["name"] or tag,
                "body": module.params["body"],
                "draft": module.params["draft"],
                "prerelease": module.params["prerelease"],
            },
        )
        if release:
            module.exit_json(changed=True, tag=release["tag_name"])
        else:
            module.exit_json(changed=False, tag=None)


if __name__ == "__main__":
    main()
