# Fedora Laptop Provision

> [Ansible](https://www.ansible.com/) playbooks to provision my Fedora Laptop.

## System Requirements

* Fedora 30 with [Ansible](https://www.ansible.com/) installed.
* Python
* GitHub personal access token.

## Usage

```
export GITHUB_TOKEN=<my_github_token>
git clone https://github.com/brpaz/fedora-bootstrap.git
sudo chmod +x setup.sh
./setup.sh
```

**Note** When installing dotfiles you will be prompted for the "pgp" key to decrypt the secure files. Make sure to have it at hand.

## Manual Steps

Unfortunately not everything can be automated and some manual steps will be required after running this scripts.

* Execute Jetbrains toolbox and install the IDEs
* Install [Crashplan](https://download.code42.com/installs/agent/7.2.0/1641/install/CrashPlanSmb_7.2.0_1525200006720_1641_Linux.tgz)
* Open Web browser and enter the "Sync Password" to sync all the extensions, bookmarks etc.
* Install Zeal Docsets

## Reference

* http://radeksprta.eu/automatically-setup-computer-ansible-playbook/
* http://blog.josephkahn.io/articles/ansible/
* https://github.com/Benoth/ansible-ubuntu

## Author

👤 **Bruno Paz**

* Website: [brunopaz.net](https://brunopaz.net)
* Github: [@brpaz](https://github.com/brpaz)


## 📝 License

Copyright © 2019 [Bruno Paz](https://github.com/brpaz).

This project is [MIT](https://opensource.org/licenses/MIT) licensed.

