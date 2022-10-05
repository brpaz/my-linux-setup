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

---

## Post install steps

Unfortunately not everything can be automated and some manual steps will be required after running this scripts.

### Restoring $HOME directory

The Ansible playbook syncs mostly of the dotfiles. Still, user data like Pictures, Music etc, must be restored manually from backup.

To do so, you can run the [scripts/restore_home.sh] script.

```bash
sudo chmod +x scripts/restore_home.sh
BACKUP_PATH=/path/to/home/backup scripts/restore_home.sh
```
Alternatively you can also use Rsync or DejaDup Restore function if you need more customization of the restore process.


### Restoring Ulauncher configurations.

To restore [Ulauncher](https://ulauncher.io) settings and extensions from a backup, run:

```bash
sudo chmod +x scripts/ulauncher_backup.sh
BACKUP_PATH=/path/to/home/backup scripts/ulauncger_backup.sh --restore
```

### Enabling Restic backups

The setup should have installed systemd units to backup the system using Restic, both to Backblaze B2 and to external NAS. These units are disabled by default, for better control, since we don´t want to start backup, until we have restored our files.

To enable the restic backups, run the following commands on your terminal:

```bash
systemctl --user enable restic-nas-backup.timer
systemctl --user enable restic-nas-prune.timer
systemctl --user enable restic-b2-backup.timer
systemctl --user enable restic-b2-prune.timer
```

### Install NVIDIA Drivers

- Check [Howto/NVIDIA - RPM Fusion](https://rpmfusion.org/Howto/NVIDIA).

### Install Web Apps

I use [WebCatalog](https://webcatalog.io/webcatalog/) to allow easy installation of web applications.

I have the following:

- Feedly
- Instagram
- Google Keep
- Google Photos
- Fast
- TickTick

### Mount Home NAS

In order to be able to backup the machine and access the files stored on the home NAS, we should mount their folders using NFS.

For that, first make sure you have `nfs` installed on your machine.

Then we can try to mount the volumes manually, using:

```bash
sudo mkdir /mnt/qnap-media
sudo mkdir /mnt/qnap-backups
sudo mount -t nfs 192.168.1.108:/Multimedia /mnt/qnap-media
````

If the test is successfull, we can now instruct the system to mount the volumes automatically on boot, by adding the following lines to the `/etc/fstab` file:


```
192.168.1.108:/Multimedia /mnt/qnap-media  nfs      defaults,nofail,nobootwait,noauto,x-systemd.automount    0       0
192.168.1.108:/Backups /mnt/qnap-backups  nfs      defaults,nofail,nobootwait,noauto,x-systemd.automount    0       0
```

**Replace the IP Address and mount path accordingly.**

### Other tasks

* [] Execute [Jetbrains toolbox](https://www.jetbrains.com/toolbox-app/) and install the IDEs. (DataGrip, Goland, IDEA, PHPStorm, WebStorm, CLion, Android Studio).
* [] Open Chrome and Firefox browsers and login to start syncing all the extensions, bookmarks etc.
* [] Enable Restic Backups
* [] Login into applications (Gnome Accounts, Spotify, etc).
* [] Install [Pop!_OS Shell](https://github.com/pop-os/shell) from source as the latest version is not yet available from the repositories.
* [] Configure Deja-Dup Backups

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

