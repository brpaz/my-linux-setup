# My Laptop Provision scripts

> Set of [Ansible](https://www.ansible.com/) playbooks to provision my Linux machines with all my applications and settings.

## Motivation

Setup a new machine from scratch is always a very time consuming task. Last time I did it, it took an entire weekend to install everything.

And there is a high chance I forgot someting, that I not use everyday. Also as the Developer I install many tools directly from GitHub and so checking if for new versions is a very manual process, like going to GitHub, check latest release, download the binary and move it to the correct place.

What if most of this setup, can be automated? That´s where [Ansible](https://ansible.readthedocs.io/en/latest/) and this reposiory comes in.

## Pre-requisites

* The `inventories/personal/hosts.ini` inventory.
* Fedora for `tuxedo-laptop` or Arch Linux for `zenbook-laptop`.
* GitHub personal access token. You can get one [here](https://github.com/settings/tokens).

## What is included

- Initial system update.
- Install Dotfiles from my private dotfiles repository, using [Yet Another Dotfiles Manager - yadm](https://yadm.io/)
- Install all my applications. Check [APPLICATIONS.md](docs/APPLICATIONS.md) for a detailed list.

## Inventories

The repo now uses a single inventory for personal machines:

- `inventories/personal/hosts.ini`

The inventory defines shared variables plus a `laptops` group and separate host vars for each machine:

- `group_vars/all.yml` for shared variables used by all personal machines
- `group_vars/laptops.yml` for shared laptop variables
- `host_vars/tuxedo-laptop.yml`
- `host_vars/zenbook-laptop.yml`

This keeps shared variables in inventory group vars, machine-specific values in host vars, and makes it easier to add more personal machines later.

## Provision a new machine

To provision the `tuxedo-laptop`, open a terminal window and run the following commands:

```sh
export GITHUB_TOKEN=<my_github_token>
sudo dnf update && dnf install -y git
git clone https://github.com/brpaz/my-linux-setup
cd my-linux-setup
sudo chmod +x setup.sh
./setup.sh
```

To provision the `zenbook-laptop`:

```sh
export GITHUB_TOKEN=<my_github_token>
sudo pacman -Syu --noconfirm git
git clone https://github.com/brpaz/my-linux-setup
cd my-linux-setup
sudo chmod +x scripts/setup-zenbook.sh
./scripts/setup-zenbook.sh
```

You can also run playbooks directly with an explicit inventory:

```sh
ansible-playbook -i inventories/personal/hosts.ini --limit tuxedo-laptop playbooks/tuxedo.yml --ask-become-pass
ansible-playbook -i inventories/personal/hosts.ini --limit tuxedo-laptop playbooks/dotfiles.yml --ask-become-pass
ansible-playbook -i inventories/personal/hosts.ini --limit tuxedo-laptop playbooks/setup.yml --ask-become-pass

ansible-playbook -i inventories/personal/hosts.ini --limit zenbook-laptop playbooks/zenbook.yml --ask-become-pass
```

To add a remote machine later, add it to `inventories/personal/hosts.ini`, place common variables in the right group vars file, and put machine-specific values in `host_vars/<host>.yml`.

**Note** When installing dotfiles you will be prompted for the "pgp" key to decrypt the secure files. Make sure to have it at hand.

---

## Post install steps

Unfortunately not everything can be automated and some manual steps will be required after running this scripts.

### Restoring $HOME directory from backup

The Ansible playbook syncs mostly of the dotfiles. Still, user data like Pictures, Music etc, must be restored manually from backup.

To do so, you can run the [scripts/restore_home.sh] script.

```bash
sudo chmod +x scripts/restore_home.sh
BACKUP_PATH=/path/to/home/backup scripts/restore_home.sh
```

This will rsync the most important folders like `Documents`, `Video`, `Music`, `Code` etc from the specified backup location.


### Manual Apps install


#### AppImages (with GearLever)

- [WebCatalog Desktop for Mac, Windows, Linux - WebCatalog](https://webcatalog.io/en/desktop/)
- [script-kit/app](https://github.com/script-kit/app/releases/tag/v2.3.0)
- [Proxyman Proxyman - macOS, iOS, Windows and Linux](https://proxyman.io/download)
- [heyman/heynote: A dedicated scratchpad for developers](https://github.com/heyman/heynote/)

#### WebCatalog

- Instagram
- Immich
- ChatGPT
- [Excalidraw | Hand-drawn look & feel • Collaborative • Secure](https://excalidraw.com/)
- [Online FlowChart & Diagrams Editor - Mermaid Live Editor](https://mermaid.live/)

#### Others

- [Download · Tailscale](https://tailscale.com/download/linux)
- [pop-os/shell: Pop!_OS Shell](https://github.com/pop-os/shell)

## Other tasks

* [] Execute [Jetbrains toolbox](https://www.jetbrains.com/toolbox-app/) and install the IDEs. (DataGrip, Goland, IDEA, PHPStorm, WebStorm, CLion, Android Studio).
* [] Open Chrome and Firefox browsers and login to start syncing all the extensions, bookmarks etc.
* [] Login into applications (Gnome Accounts, Spotify, etc).
* [] Configure Pika Backup

---

## Keep the system updated

Most of the tasks are idenpotent and you can use this playbook to keep your system updated. This is useful, for example, to automatically update all the programs installed from GitHub, as the playbooks will try to fetch and install always the latest release.

You can execute a specific tag, by running:

```bash
 TAG=node task run-tag
```

## Keep GitHub installed software updated

```bash
TAG=github task run-tag
```

---

## Reference

* http://radeksprta.eu/automatically-setup-computer-ansible-playbook/
* http://blog.josephkahn.io/articles/ansible/
* https://github.com/Benoth/ansible-ubuntu

## Author

👤 **Bruno Paz**

* Website: [brunopaz.dev](https://brunopaz.dev)
* Github: [@brpaz](https://github.com/brpaz)

## 📝 License

Copyright © 2019 [Bruno Paz](https://github.com/brpaz).

This project is [MIT](https://opensource.org/licenses/MIT) licensed.
