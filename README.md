# My Laptop Provision scripts

> Set of [Ansible](https://www.ansible.com/) playbooks to provision a Fedora machine with all my applications and settings.

## Motivation

Setup a new machine from scratch is always a very time consuming task. Last time I did it, it took an entire weekend to install everything.

And there is a high change of forget some less used command line tool. Also as the Developer I install many tools directly from GitHub and so checking if they are updated is a very manual process, like going to GitHub, check latest release, download the binary and move it to the correct place.

What if most of this setup, can be automated? That´s where [Ansible](https://ansible.readthedocs.io/en/latest/) and this reposiory comes in.

## Pre-requisites

* A machine running Fedora OS. This playbook was tested with Fedora 39, but it should work on other versions.
* GitHub personal access token. You can get one [here](https://github.com/settings/tokens).

## What is included

- Initial system update.
- Install Dotfiles from my private dotfiles repository, using [Yet Another Dotfiles Manager - yadm](https://yadm.io/)
- Install all my applications. Check [APPLICATIONS.md](APPLICATIONS.md) for a detailed list.

## Provision a new machine

To provision a new machine, open a terminal window and run the following commands:

```sh
export GITHUB_TOKEN=<my_github_token>
sudo dnf update && dnf install -y git
git clone https://github.com/brpaz/my-linux-setup
cd my-linux-setup
sudo chmod +x setup.sh
./setup.sh
```

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


### Enabling Restic backups

The setup should have installed systemd units to backup the system using Restic, both to Backblaze B2 and to external NAS. These units are disabled by default, for better control, since we don´t want to start backup, until we have restored our files.

To enable the restic backups, run the following commands on your terminal:

```bash
systemctl --user enable restic-nas-backup.timer
systemctl --user enable restic-nas-prune.timer
systemctl --user enable restic-b2-backup.timer
systemctl --user enable restic-b2-prune.timer
```


### Manual Apps install


#### AppImages (with GearLever)

- [WebCatalog Desktop for Mac, Windows, Linux - WebCatalog](https://webcatalog.io/en/desktop/)
- [script-kit/app](https://github.com/script-kit/app/releases/tag/v2.3.0)
- [Proxyman Proxyman - macOS, iOS, Windows and Linux](https://proxyman.io/download)


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
* [] Enable Restic Backups
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

