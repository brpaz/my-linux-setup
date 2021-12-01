# My Laptop Provision Playbooks

> Set of [Ansible](https://www.ansible.com/) playbooks to provision a Fedora machine with all my applications and settings.

## Pre-requisites

* A machine running Fedora OS. This playbook was tested with Fedora 32.
* Git (`dnf install -y git`)
* GitHub personal access token. You can get one [here](https://github.com/settings/tokens).

## What is included

- Initial system update.
- Install Dotfiles from my private dotfiles repository, using [Yet Another Dotfiles Manager - yadm](https://yadm.io/)
- Install all my applications.


## Initial Setup

To provision a new machine open a terminal window and run the following commands:

```sh
export GITHUB_TOKEN=<my_github_token>
git clone https://github.com/brpaz/my-linux-setup
sudo chmod +x setup.sh
./setup.sh
```

**Note** When installing dotfiles you will be prompted for the "pgp" key to decrypt the secure files. Make sure to have it at hand.

## Manual Steps

Unfortunately not everything can be automated and some manual steps will be required after running this scripts.

### Restoring $HOME directory

The Ansible playbook syncs mostly of the dotfiles. Still, user data like Pictures, Music etc, must be restored manually from backup.

To do so, you can run the [scripts/restore_home.sh] script.

```bash
sudo chmod +x scripts/restore_home.sh
BACKUP_PATH=/path/to/home/backup scripts/restore_home.sh
```

### Restoring Ulauncher configurations.

To restore [Ulauncher](https://ulauncher.io) settings and extensions from a backup, run:

```bash
sudo chmod +x scripts/ulauncher_backup.sh
BACKUP_PATH=/path/to/home/backup scripts/ulauncger_backup.sh --restore
```

### Install NVIDIA Drivers

Check [Howto/NVIDIA - RPM Fusion](https://rpmfusion.org/Howto/NVIDIA).

### Install Web Apps

Open [WebCatalog](https://webcatalog.io/webcatalog/) and install the following applications:

- Feedly
- Instagram
- Google Keep
- Google Photos
- WhatsApp
- TickTick

### Other tasks

* [] Execute Jetbrains toolbox and install the IDEs
* [] Open Chrome and Firefox browsers and login to start syncing all the extensions, bookmarks etc.
* [] Enable Restic Backups
* [] Login into applications (Spotify, etc).
* [] Install [Pop!_OS Shell](https://github.com/pop-os/shell) from source.

---

## Keep the system updated

Most of the tasks are idenpotent and you can use this playbook to keep your system updated. This is useful, for example, to automatically update all the programs installed from GitHub, as the playbooks will try to fetch and install always the latest release.

You can execute a specific tag, by running:

```
 TAG=node make run-tag
```

---

## TODO

* Fix ansible lint warnings and improve idenpontency of some tasks

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

