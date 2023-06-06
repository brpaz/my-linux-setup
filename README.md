# My Linux machine setup

> This repository contains a List of applications and tools that are installed on my Linux Machine (Running Fedora). This is inspired by nikitavoloboev´s [my-mac-os](https://github.com/nikitavoloboev/my-mac-os), but for Linux Based Systems.

For automated provision scripts, powered by Ansible, please check the [provision](provision) folder. This scripts will provision the installation of most of these applications in an automatic way, which makes it a lot faster, to start from scratch in a new machine.

## Motivation

Setup a new machine from scratch is always a very time consuming task. Last time I did it I took an entire weekend to install everything. And there is a high change of forget some less used command line tool. Also as the Developer I install many tools directly from GitHub and so checking if they are updated is a very manual process, like going to GitHub, check latest release, download the binary and move it to the correct place.

What if most of that, can be automated?

That´s what this repository does. In this README file you will encounter a list of software I use and can be seen as a reference. The more interesting part is in
[provision](provision) folder, which contains a set of Ansible playbooks to automatically install that softtware.

As a Developer I need my main OS to be very stable but I also want to have regularly updated packages. After working with Debian based OSes for many years, in 2019 I decided to give a try to [Fedora](https://getfedora.org/) and so this playbook is optimized for Fedora.

## Table of Contents

- [My Linux machine setup](#my-linux-machine-setup)
  - [Motivation](#motivation)
  - [Table of Contents](#table-of-contents)
  - [Graphical Applications](#graphical-applications)
    - [Productivity](#productivity)
    - [Internet](#internet)
      - [Web Apps (powered by Web Catalog)](#web-apps-powered-by-web-catalog)
    - [Graphics \& Design](#graphics--design)
    - [Sound \& Video](#sound--video)
    - [Networking](#networking)
    - [Development Tools](#development-tools)
    - [Utilities](#utilities)
    - [Games](#games)
    - [Themes and Icons](#themes-and-icons)
    - [Fonts](#fonts)
    - [Finance](#finance)
  - [Terminal Applications](#terminal-applications)
    - [Shell configuration](#shell-configuration)
    - [File Navigation and Search](#file-navigation-and-search)
    - [Text Mainuplation](#text-mainuplation)
    - [Multimedia](#multimedia)
    - [Http Tools](#http-tools)
    - [Package Managers](#package-managers)
    - [Version Control](#version-control)
    - [Project Scaffolding](#project-scaffolding)
    - [Snippets and Cheat sheets](#snippets-and-cheat-sheets)
    - [Cloud clients](#cloud-clients)
    - [Docker Tools](#docker-tools)
  - [Infrastucture As Code](#infrastucture-as-code)
    - [Security](#security)
    - [System Utils](#system-utils)
    - [Other](#other)
  - [Development Runtimes](#development-runtimes)
  - [Gnome Extensions](#gnome-extensions)

## Graphical Applications

In this section will be listed all the Graphical Applications. A separate section with Terminal applications after.

### Productivity

* [TickTick](https://flathub.org/apps/details/com.ticktick.TickTick) - TickTick is a powerful to-do & task management app with seamless cloud synchronization across all your devices.
* [Obsidian](https://obsidian.md/) - Obsidian is a powerful knowledge base on top of a local folder of plain text Markdown files.
* [Notejot](https://flathub.org/apps/details/io.github.lainsce.Notejot) - Jot your ideas.
* [Espanso](https://espanso.org/) - A Privacy-first, Cross-platform Text Expander
* [Gnome TODO](https://flathub.org/apps/details/org.gnome.Todo) - Personal task manager for GNOME.
* [Gnome Calendar](https://wiki.gnome.org/Apps/Calendar) - Calendar application for GNOM
* [Gnome Contacts](https://wiki.gnome.org/Apps/Contacts) - Easy access to my Contacts List, syncted with Google Contacts.
* [Dialect](https://flathub.org/apps/details/app.drey.Dialect) - A translation app for GNOME.
* [Drawio](https://github.com/jgraph/drawio-desktop) - Create flowcharts, process diagrams, org charts, UML, ER diagrams, network diagrams and much more.
* [Libreoffice](https://libreoffice.org) - Office suite.
* [Evince](https://flathub.org/apps/details/org.gnome.Evince) - A document viewer for the GNOME desktop.
* [Foliate](https://flathub.org/apps/details/com.github.johnfactotum.Foliate) - Epub Reader
* [Remembrance](https://flathub.org/apps/details/io.github.dgsasha.Remembrance) - Set reminders for anything you need help remembering.

---

### Internet

* [Firefox](https://www.mozilla.org/pt-PT/firefox/) - My primary browser.
* [Google Chrome](https://www.google.com/chrome/) - My secondary browser.
* [Brave Browser](https://brave.com/) - Browse privately. Search privately. And ditch Big Tech.
* [Microsoft Edge](https://flathub.org/apps/details/com.microsoft.Edge)
* [Dropbox](https://www.dropbox.com/home#/) - Easly share files between computers.
* [uget](https://ugetdm.com/) - Download manager
* [Connections](https://flathub.org/apps/details/org.gnome.Connections) - View and use other desktops
* [Slack](https://slack.com) - Official Slack application.
* [Discord](https://discordapp.com/) - Free Voice and Text Chat for Gamers.
* [ZapZap](https://flathub.org/apps/details/com.rtosta.zapzap) - Unofficial WhatsApp Web Desktop client.
* [Signal Desktop](https://flathub.org/apps/details/org.signal.Signal) - Signal Desktop client.
* [Fragments](https://flathub.org/apps/details/de.haeckerfelix.Fragments) - A BitTorrent Client.
* [WebCatalog](https://webcatalog.io/webcatalog/) - Turn Any Websites Into Real Desktop Apps.
* [NewsFlash](https://flathub.org/apps/details/com.gitlab.newsflash) - Follow your favorite blogs and news sites.
* [What IP](https://flathub.org/apps/details/org.gabmus.whatip) - Info on your IP
* [Proton VPN](https://flathub.org/apps/com.protonvpn.www)

#### Web Apps (powered by Web Catalog)

- ProtonMail
- RegexR
- Google Photos
- Excalidraw
- Instagram
- Feedly
- Google Meet
- Mermaid Editor

---

### Graphics & Design

* [GIMP](https://www.gimp.org/) - GNU Image Manipulation Program.
* [Flameshot](https://github.com/lupoDharkael/flameshot) - Powerful yet simple to use screenshot software with annotation support and easy upload to Imgur.
* [Peek](https://github.com/phw/peek) - Simple animated GIF screen recorder with an easy to use interface
* [Eyedropper](https://flathub.org/apps/details/com.github.finefindus.eyedropper) - An easy-to-use color picker and editor
* [XnConvert](https://www.xnview.com/en/xnconvert/) - Batch Image Processing, Image Convertor, Image Resizer
* [Inkscape](https://inkscape.org/) - Design tool
* [Avvie](https://flathub.org/apps/details/com.github.taiko2k.avvie) - A simple tool cropping and downsizing images. Suitable for avatars or cropping photos for use as desktop wallpapers. Convert PNG to JPG. Export in one click to your Pictures folder.
* [Yoga Image optimizer](https://flathub.org/apps/details/org.flozz.yoga-image-optimizer) - A graphical tool to convert and optimize JPEG, PNG and WebP images
* [Drawing](https://flathub.org/apps/details/com.github.maoschanz.drawing) - Edit screenshots or memes.
* [Boxy SVG](https://flathub.org/apps/details/com.boxy_svg.BoxySVG) - Boxy SVG project goal is to create the best tool for editing SVG files. For beginners as well as for professional web designers and web developers. On any device and operating system.

---
### Sound & Video

* [Spotify](https://www.spotify.com/) - Music for everyone.
* [Pitivi](https://flathub.org/apps/details/org.pitivi.Pitivi) - Create and edit your own movies.
* [VLC](http://www.videolan.org/vlc/) - VLC is a free and open source cross-platform multimedia player and framework that plays most multimedia files as well as DVDs, Audio CDs, VCDs, and various streaming protocols.
* [Clapper](https://flathub.org/apps/details/com.github.rafostar.Clapper) - Simple and modern GNOME media player.
* [Audacity](https://sourceforge.net/projects/audacity/) - Audio editor.
* [GNOME Music](https://flathub.org/apps/details/org.gnome.Music) - An easy way to play your music. Automatically discover music on your computer, the local network and internet services.
* [FFaudioConverter](https://flathub.org/apps/details/com.github.Bleuzen.FFaudioConverter) - Convert music files between multiple formats
* [Gnome Podcasts](https://flathub.org/apps/details/org.gnome.Podcasts) - Listen to your favorite podcasts.
* [Monophony](https://flathub.org/apps/io.gitlab.zehkira.Monophony) - Stream music from YouTube
* [Video Trimmer](https://flathub.org/apps/details/org.gnome.gitlab.YaLTeR.VideoTrimmer) - Video Trimmer cuts out a fragment of a video given. the start and end timestamps. The video is never re-encoded, so the process is very fast and does not reduce the video quality.
* [Ear Tag](https://flathub.org/apps/details/app.drey.EarTag) - Small and simple music tag editor
* [Shortwave](https://flathub.org/apps/details/de.haeckerfelix.Shortwave) - Shortwave is an internet radio player that provides access to a station database with over 25,000 stations.
* [OBS](https://obsproject.com/download) - Open Broadcaster Software to record screencasts and streaming.
* [Kooha](https://flathub.org/apps/details/io.github.seadve.Kooha) - Elegantly record your screen.
* [Mousai](https://flathub.org/apps/details/io.github.seadve.Mousai) - Mousai is a simple application that can identify song similar to Shazam.
* [Kodi](https://flathub.org/apps/details/tv.kodi.Kodi) - Kodi allows users to play and view videos, music, podcasts, and other digital media files from local storage, network storage and the internet. It's optimized for a 10-foot user interface to be used with televisions and remote controls.
* [Blanket](https://flathub.org/apps/details/com.rafaelmardojai.Blanket) - Improve focus and increase your productivity by listening to different sounds.
* [TubeConverter](https://github.com/NickvisionApps/TubeConverter) - A basic yt-dlp frontend
### Networking

* [HTTP Toolkit](https://httptoolkit.com/) - Intercept, debug & mock HTTP with HTTP Toolkit
* [Tailscale](https://tailscale.com/) - Best VPN Service for Secure Networks

---

### Development Tools

* [JetBrains Toolbox](https://www.jetbrains.com/toolbox/app/) -  Manage Your Jetbrains Tools with Ease.
    * [PHPStorm](https://www.jetbrains.com/phpstorm/) - The Best PHP IDE by Jetbrains.
    * [Intelij](https://www.jetbrains.com/idea/) - Java and Android IDE.
    * [WebStorm](https://www.jetbrains.com/webstorm/) - General purpose Web IDE.
    * [GoLand](https://www.jetbrains.com/go/) - GoLand is a cross-platform IDE built specially for Go developers.
    * [DataGrip](https://www.jetbrains.com/datagrip/) -  The Cross-Platform IDE for Databases & SQL by JetBrains
* [Visual Studio Code](https://code.visualstudio.com/) - My text editor of choice
* [Neovim](https://neovim.io/) - hyperextensible Vim-based text editor
* [Meld](http://meldmerge.org/) - Meld is a visual diff and merge tool targeted at developers
* [GitKraken](https://www.gitkraken.com/) - The legendary Git GUI client for Windows, Mac and Linux.
* [Insomnia](https://insomnia.rest/) - The Collaborative API Development Platform
* [DBeaver](https://flathub.org/apps/details/io.dbeaver.DBeaverCommunity) - Universal Database Manager
* [TextPieces](https://flathub.org/apps/details/com.github.liferooter.textpieces) - Transform text without using random websites
* [Open Lens](https://k8slens.dev/) - The Kubernetes IDE.
* [Kube Forwarder](https://www.electronjs.org/apps/kube-forwarder) - Easy to use Kubernetes port forwarding manager.
* [RESP.app](https://flathub.org/apps/details/app.resp.RESP) - GUI for Redis

---
### Utilities

* [Script Kit](https://www.scriptkit.com/) - Shortcut to Everything
* [Tilix](https://github.com/gnunn1/tilix) - A tiling terminal emulator for Linux using GTK+ 3.
* [Menulibre](https://launchpad.net/menulibre) - Menu editor
* [Stacer](https://github.com/oguzhaninan/Stacer) - Linux System Optimizer and Monitoring
* [Restic](https://restic.net/) - Automatic and continuous backup to the cloud.
* [Font Manager](https://flathub.org/apps/details/org.gnome.FontManager) - Font Manager is intended to provide a way for average users to easily manage desktop fonts, without having to resort to command line tools or editing configuration files by hand.
* [Font Finder](https://flathub.org/apps/details/io.github.mmstick.FontFinder) - An application for browsing and installing fonts from Google's font archive from the comfort of your Linux desktop.
* [Cryptomator](https://flathub.org/apps/details/org.cryptomator.Cryptomator) - Free client-side encryption for your cloud files.
* [Pika Backup](https://flathub.org/apps/details/org.gnome.World.PikaBackup)
* [Grsync](https://sourceforge.net/projects/grsync/) - Grsync is used to synchronize folders, files and make backups. It is a rsync GUI (Graphical User Interface).
* [Authy](https://flathub.org/apps/details/com.authy.Authy) - The Twilio Authy app generates secure 2 step verification tokens on your device. It help’s you protect your account from hackers and hijackers by adding an additional layer of security.
* [Bitwarden](https://bitwarden.com/download/) - A secure and free password manager for all of your devices.
* [Obfuscate](https://flathub.org/apps/details/com.belmoussaoui.Obfuscate) - Obfuscate lets you redact your private information from any image.
- [Fedora Media Writer](https://flathub.org/apps/details/org.fedoraproject.MediaWriter)
- [Boxes](https://flathub.org/apps/details/org.gnome.Boxes)
- [VirtualBox](https://www.virtualbox.org/) - VirtualBox is a powerful x86 and AMD64/Intel64 virtualization product for enterprise as well as home use.
- [Solaar](https://pwr-solaar.github.io/Solaar/) - Linux Device Manager for Logitech Unifying Receivers and Devices.
- [Frog](https://flathub.org/apps/details/com.github.tenderowl.frog) - Extract text from anywhere, even QR code.
- [Flatseal](https://flathub.org/apps/details/com.github.tchx84.Flatseal) - Manage Flatpak permissions


--
### Games

* [Steam](https://store.steampowered.com)
* [Gens/GS - Sega Retro](https://segaretro.org/Gens/GS)
* [Mines](https://wiki.gnome.org/Apps/Mines)

---
### Themes and Icons

* [papirus-icon-theme](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme) - Papirus icon theme for Linux.

---
### Fonts

* [Jetbrains Mono](https://www.jetbrains.com/lp/mono/) - A typeface for developers. By Jetbrains.

### Finance

* [Money](https://flathub.org/apps/details/org.nickvision.money) - A personal finance manager
* [Markets](https://flathub.org/apps/details/com.bitstower.Markets) - A stock, currency and cryptocurrency tracker.

---

## Terminal Applications

A big part of my Development life is spent on the Terminal, so having a good set of tools there is essential.

### Shell configuration

I use ZSH shell with the following extras:

* [Starship](https://starship.rs/) - Cross-Shell Prompt
* [antidote](https://github.com/mattmc3/antidote) - Antidote is a feature complete Zsh implementation of the legacy Antibody plugin manager.
* [zsh-completions](https://github.com/zsh-users/zsh-completions) - Additional completion definitions for Zsh.
* [zsh-you-should-use](https://github.com/MichaelAquilina/zsh-you-should-use) - ZSH plugin that reminds you to use existing aliases for commands you just typed.
* [zsh-completions](https://github.com/zsh-users/zsh-completions) -  Additional completion definitions for Zsh.
* [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) -  Fish-like autosuggestions for Zsh.
* [Fig](https://fig.io/) Fig adds IDE-style autocomplete to your existing terminal.

### File Navigation and Search

* [urbainvaes/fzf-marks](https://github.com/urbainvaes/fzf-marks) - Plugin to manage bookmarks in bash and zsh
* [ranger](https://github.com/ranger/ranger) - A VIM-inspired filemanager for the console.
* [fzf](https://github.com/junegunn/fzf) -  A command-line fuzzy finder
* [fd](https://github.com/sharkdp/fd) - A simple, fast and user-friendly alternative to 'find'
* [ripgrep](https://github.com/BurntSushi/ripgrep) - ripgrep recursively searches directories for a regex pattern.
* [sd](https://github.com/chmln/sd) - Intuitive find & replace CLI (sed alternative)]
* [enhancd](https://github.com/b4b4r07/enhancd) - A next-generation cd command with your interactive filter

### Text Mainuplation

* [vim](https://vim.org) with [vim-plug](https://github.com/junegunn/vim-plug) - Terminal based text editor.
* [bat](https://github.com/sharkdp/bat) - A cat(1) clone with wings.
* [jq](https://github.com/stedolan/jq) - Command-line JSON processor.
* [yq](https://github.com/mikefarah/yq) -  yq is a portable command-line YAML processor.
* [tablemark-cli](https://github.com/citycide/tablemark-cli) - Generate markdown tables from JSON data at the command line.
* [pandoc](https://github.com/jgm/pandoc) - Universal markup converter
* [glow](https://github.com/charmbracelet/glow) - Render markdown on the CLI
* [lnav](http://lnav.org/) - The Log File Navigator
* [hasha-cli](https://github.com/sindrehasha-clisorhus/hasha-cli) - hashing made simple. Get the hash of text or stdin.

### Multimedia

* [jarun/imgp](https://github.com/jarun/imgp) - Multi-core batch image resizer and rotator
* [svg/svgo](https://github.com/svg/svgo) - Node.js tool for optimizing SVG files
* [yt-dlp](https://github.com/yt-dlp/yt-dlp) - Command-line program to download videos from YouTube.com and other video sites
* [asciinema](https://asciinema.org/) - Record and share your terminal sessions, the right way
* [svg-term-cli](https://github.com/marionebl/svg-term-cli) - Share terminal sessions via SVG and CSS]

### Http Tools

* [httpie](https://github.com/jakubroztocil/httpie) - Modern command line HTTP client – user-friendly curl alternative with intuitive UI, JSON support, syntax highlighting, wget-like downloads, extensions, etc
* [Artillery](https://artillery.io/) - A modern load testing toolkit.
* [k6](https://k6.io/) - Load testing for engineering teams.

### Package Managers

* [composer](https://getcomposer.org/) - Dependency Manager for PHP
* [Yarn](https://yarnpkg.com/en/) - Modern Javascript Package manager.

### Version Control

* [GitHub CLI](https://github.com/cli/cli) - GitHub’s official command line tool
* [GitLab CLI](https://gitlab.com/gitlab-org/cli) - GLab is an open source GitLab CLI tool bringing GitLab to your terminal next to where you are already working with git and your code without switching between windows and browser tabs. Work with issues, merge requests, watch running pipelines directly from your CLI among other features.
* [tig](https://github.com/jonas/tig) - Text-mode interface for git
* [git-extras](https://github.com/tj/git-extras) - GIT utilities, repo summary, repl, changelog population, author commit percentages and more
* [conventional-changelog](https://github.com/conventional-changelog/conventional-changelog/tree/master/packages/conventional-changelog-cli#readme)
* [commitizen/cz-cli](https://github.com/commitizen/cz-cli) - The commitizen command line utility.
* [goreleaser/goreleaser](https://github.com/goreleaser/goreleaser) - Deliver Go binaries as fast and easily as possible.
* [cezaraugusto/mklicense](https://github.com/cezaraugusto/mklicense) -  CLI tool for generating Licenses\. Easily\.
* [TejasQ/add-gitignore](https://github.com/TejasQ/add-gitignore) -  An interactive CLI tool that adds a .gitignore to your projects.

### Project Scaffolding

* [copier](https://copier.readthedocs.io/en/stable/) - A library and CLI app for rendering project templates.
* [Vue CLI 3](https://cli.vuejs.org/) - Standard Tooling for Vue.js Development.
* [vuejs/vuepress](https://github.com/vuejs/vuepress) - Minimalistic Vue-powered static site generator
* [Symfony CLI](https://symfony.com/download) - Symfony command line tool
* [serverless/serverless](https://github.com/serverless/serverless) - Serverless Framework – Build web, mobile and IoT applications with serverless architectures using AWS Lambda, Azure Functions, Google CloudFunctions & more!
* [readme-md-generator](https://github.com/kefranabg/readme-md-generator) - CLI that generates beautiful README.md files]

### Snippets and Cheat sheets

* [tldr](https://github.com/tldr-pages/tldr) - Simplified and community\-driven man pages.
* [sgentle/caniuse-cmd](https://github.com/sgentle/caniuse-cmd) - Caniuse command line tool.
* [the-way](https://github.com/out-of-cheese-error/the-way) - A code snippets manager for your terminal.

### Cloud clients

* [doctl](https://github.com/digitalocean/doctl) - A command line tool for DigitalOcean services.
* [Google Cloud SDK](https://cloud.google.com/sdk/gcloud/) - Google Cloud SDK.
* [AWS CLI](https://aws.amazon.com/cli) - AWS Command Line Interface.
* [Netlify Command Line Tools](https://www.netlify.com/docs/cli/) - Netlify’s command line tools let you deploy sites or configure continuous deployment straight from the command line.
* [Vercel CLI](https://vercel.com/cli)
* [cloudflare-cli](https://github.com/danielpigott/cloudflare-cli) - CLI for interacting with Cloudflare
* [firebase-tools](https://firebase.google.com/docs/cli) - Firebase Command Line tools

### Docker Tools

* [docker-compose](https://github.com/docker/compose) - Define and run multi-container applications with Docker
* [ctop](https://github.com/bcicen/ctop) - Top-like interface for container metrics
* [dive](https://github.com/wagoodman/dive) - A tool for exploring each layer in a docker image
* [kail](https://github.com/boz/kail) - kubernetes log viewer.
* [lazydocker](https://github.com/jesseduffield/lazydocker) - The lazier way to manage everything docker
* [minikube](https://github.com/kubernetes/minikube) - Run Kubernetes locally
* [Kind](https://github.com/kubernetes-sigs/kind) - Kubernetes IN Docker - local clusters for testing Kubernete
* [kubectl](https://github.com/kubernetes/kubernetes/tree/master/pkg/kubectl) - Kubernetes Control
* [kubectx](https://github.com/ahmetb/kubectx) - Fast way to switch between clusters and namespaces in kubectl
* [k9s](https://github.com/derailed/k9s) - Kubernetes CLI To Manage Your Clusters In Style!
* [flux](https://github.com/fluxcd/flux) - Flux Command line tool.
* [helm](https://helm.sh/) - The package manager for Kubernetes.
* [kubeconform](https://github.com/yannh/kubeconform) - A FAST Kubernetes manifests validator, with support for Custom Resources.

## Infrastucture As Code

* [Terraform](https://www.terraform.io/) - Write, Plan, and Create Infrastructure as Code.
* [Ansible](https://www.ansible.com/) - Simple, agentless IT automation that anyone can use.
  * [ansible/ansible-lint](https://github.com/ansible/ansible-lint) - Best practices checker for Ansible
  * [Ansible Galaxy](https://galaxy.ansible.com/) - Jump-start your automation project with great content from the Ansible community. Galaxy provides pre-packaged units of work known to Ansible as roles.
* [Pulumi](https://www.pulumi.com/) -  Modern Infrastructure as Code
* [terratest](https://github.com/gruntwork-io/terratest/releases) - Terratest is a Go library that makes it easier to write automated tests for your infrastructure code.
* [sops](https://github.com/mozilla/sops) - Simple and flexible tool for managing secrets

### Security

* [pwgen](https://linux.die.net/man/1/pwgen) - make pronounceable passwords.
* [bitwarden/cli](https://github.com/bitwarden/cli) - The command line vault (Windows, macOS, & Linux

### System Utils

* [htop](https://github.com/hishamhm/htop) - htop is an interactive text-mode process viewer for Unix systems.
* [fkill-cli](https://github.com/sindresorhus/fkill-cli) - Fabulously kill processes. Cross-platform.
* [trash-cli](https://github.com/sindresorhus/trash-cli) - Move files and folders to the trash.
* [tmux](https://github.com/tmux/tmux) and [tmuxp](https://github.com/tmux-python/tmuxp) - Terminal multiplexer and session manager.
* [yadm](https://github.com/TheLocehiliosan/yadm) - yadm is a tool for managing dotfiles.
* [direnv](https://direnv.net/) - direnv is an extension for your shell. It augments existing shells with a new feature that can load and unload environment variables depending on the current directory.
* [ncdu](https://linux.die.net/man/1/ncdu) - Disk usage visualization from terminal.
* [glances](https://github.com/nicolargo/glances) - Glances an Eye on your system. A top/htop alternative for GNU/Linux, BSD, Mac OS and Windows operating systems.

### Other

* [localtunnel](https://github.com/localtunnel/localtunnel) - expose your machine to the world.
* [mkcert](https://github.com/FiloSottile/mkcert) - A simple zero-config tool to make locally trusted development certificates with any names you'd like.
* [mycli](https://www.mycli.net/) - MyCLI is a command line interface for MySQL, MariaDB, and Percona with auto-completion and syntax highlighting.
* [figlet](http://www.figlet.org/) - FIGlet is a program for making large letters out of ordinary text
* [sitespeed.io](https://github.com/sitespeedio/sitespeed.io) - Open source tool that helps you monitor, analyze and optimize your website speed and performance, based on performance best practices advices.
* [mermaid.cli](https://github.com/mermaidjs/mermaid.cli) - Generate Diagrams using Mermaid.
* [wmctrl](https://linux.die.net/man/1/wmctrl) - wmctrl is a command that can be used to interact with an X Window manager that is compatible with the EWMH/NetWM specification.
* [lefthook](https://github.com/evilmartians/lefthook) - Fast and powerful Git hooks manager for any type of projects.
* [D2 Lang](https://d2lang.com/tour/intro/) - D2 is a diagram scripting language that turns text to diagrams. It stands for Declarative Diagramming. Declarative, as in, you describe what you want diagrammed, it generates the image.
* [watchexec](https://github.com/watchexec/watchexec) - Executes commands in response to file modifications
## Development Runtimes

* PHP
* NodeJS
* Golang
* Ruby
* Python
* Rust

---

## Gnome Extensions

* [AppIndicator and KStatusNotifierItem Support](https://extensions.gnome.org/extension/615/appindicator-support/) - Adds AppIndicator, KStatusNotifierItem and legacy Tray icons support to the Shell.
* [Caffeine](https://extensions.gnome.org/extension/517/caffeine/) - Disable the screensaver and auto suspend
* [Clipboard Indicator](https://extensions.gnome.org/extension/779/clipboard-indicator/) - Clipboard Manager extension for Gnome-Shell - Adds a clipboard indicator to the top panel, and caches clipboard history.
* [Coverflow Alt-Tab](https://extensions.gnome.org/extension/97/coverflow-alt-tab/) - Replacement of Alt-Tab, iterates through windows in a cover-flow manner.
* [Emoji Selector](https://extensions.gnome.org/extension/1162/emoji-selector/) - This extension provides a parametrable popup menu displaying most emojis, clicking on an emoji copies it to the clipboard.
* [GSConnect](https://extensions.gnome.org/extension/1319/gsconnect/) - KDE Connect allows devices to securely share content like notifications or files and other features like SMS messaging and remote control.
* [Always Indicator](https://extensions.gnome.org/extension/2594/always-indicator/) - Always show the new messages indicator on new messages. Features: 1) New message indicator is always shown if there are notifications.
* [Vitals](https://extensions.gnome.org/extension/1460/vitals/) - A glimpse into your computer's temperature, voltage, fan speed, memory usage, processor load, system resources,
speed and storage stats.
* [Pop!_OS Shell](https://github.com/pop-os/shell) - Pop Shell is a keyboard-driven layer for GNOME Shell which allows for quick and sensible navigation and management of windows.
* [Auto Move Windows](https://extensions.gnome.org/extension/16/auto-move-windows/) - Move applications to specific workspaces when they create windows.
* [Status Area Horizontal Spacing](https://extensions.gnome.org/extension/355/status-area-horizontal-spacing/)
* [Dash to Panel](https://extensions.gnome.org/extension/1160/dash-to-panel/) - An icon taskbar for the Gnome Shell.
* [Media Controls](https://extensions.gnome.org/extension/4470/media-controls/)
* [Net speed Simplified](https://extensions.gnome.org/extension/3724/net-speed-simplified/)

---
* ## VS Code Extensions

* 42Crunch.vscode-openapi
* 4ops.terraform
* adamhartford.vscode-base64
* adrianwilczynski.alpine-js-intellisense
* ahebrank.yaml2json
* akamud.vscode-caniuse
* alefragnani.Bookmarks
* alefragnani.project-manager
* alexkrechik.cucumberautocomplete
* anseki.vscode-color
* astro-build.astro-vscode
* be5invis.toml
* benjaminromano.typings-installer
* bierner.markdown-mermaid
* bilelmoussaoui.flatpak-vscode
* bmewburn.vscode-intelephense-client
* bradlc.vscode-tailwindcss
* brpaz.contextual-snips
* brpaz.vscode-advanced-snippets
* brpaz.vscode-obsidianmd
* brpaz.vscode-sao
* capaj.vscode-exports-autocomplete
* christian-kohler.npm-intellisense
* chrmarti.regex
* codezombiech.gitignore
* cschleiden.vscode-github-actions
* cssho.vscode-svgviewer
* DanielSanMedium.dscodegpt
* dbaeumer.vscode-eslint
* deerawan.vscode-faker
* DigitalBrainstem.javascript-ejs-support
* dionmunk.vscode-notes
* eamodio.gitlens
* EditorConfig.EditorConfig
* emallin.phpunit
* emilast.LogFileHighlighter
* esbenp.prettier-vscode
* fabiospampinato.vscode-open-in-github
* GitHub.copilot
* GitHub.remotehub
* GitHub.vscode-pull-request-github
* golang.go
* Grafana.vscode-jsonnet
* Gruntfuggly.todo-tree
* hashicorp.terraform
* idleberg.badges
* idleberg.icon-fonts
* JakeWilson.vscode-placeholder-images
* jcmordan.mark-as-excluded
* lunuan.kubernetes-templates
* mads-hartmann.bash-ide-vscode
* marclipovsky.string-manipulation
* michelemelluso.gitignore
* mikestead.dotenv
* milovidov.escape-quotes
* mindginative.terraform-snippets
* ms-azuretools.vscode-docker
* ms-kubernetes-tools.vscode-kubernetes-tools
* ms-python.isort
* ms-python.python
* ms-python.vscode-pylance
* ms-toolsai.jupyter
* ms-toolsai.jupyter-keymap
* ms-toolsai.jupyter-renderers
* ms-toolsai.vscode-jupyter-cell-tags
* ms-toolsai.vscode-jupyter-slideshow
* ms-vscode-remote.remote-containers
* ms-vscode.azure-repos
* ms-vscode.remote-repositories
* mushan.vscode-paste-image
* Nautigsam.go-to-test
* netcorext.uuid-generator
* nick-rudenko.back-n-forth
* nickdemayo.vscode-json-editor
* Orta.vscode-jest
* pflannery.vscode-versionlens
* pnp.polacode
* Prisma.prisma
* quicktype.quicktype
* rebornix.ruby
* redhat.vscode-commons
* redhat.vscode-yaml
* richie5um2.vscode-sort-json
* ronnidc.nunjucks
* rpinski.shebang-snippets
* rubbersheep.gi
* rust-lang.rust-analyzer
* ryanolsonx.snippet-creator
* shanoor.vscode-nginx
* svelte.svelte-vscode
* techer.open-in-browser
* teddylun.json-utils
* thomas-baumgaertner.vcl
* toiroakr.stringified-json-editor
* tombonnike.vscode-status-bar-format-toggle
* tsandall.opa
* Tyriar.lorem-ipsum
* Vue.volar
* weaveworks.vscode-gitops-tools
* whatwedo.twig
* wholroyd.jinja
* wingrunr21.vscode-ruby
* wix.vscode-import-cost
* xdebug.php-debug
* Xenny.markdown-table
* ymotongpoo.licenser
* yzhang.markdown-all-in-one
* zhuangtongfa.material-theme

* ## Firefox Extensions


- [Add to Feedly Plus — quasiyoke](https://quasiyoke.me/en/add-to-feedly-plus/)
- [Auto Tab Discard :: add0n.com](https://add0n.com/tab-discard.html)
- [Bitwarden](https://addons.mozilla.org/en-US/firefox/addon/bitwarden-password-manager/)
- [Brotab](https://addons.mozilla.org/en-US/firefox/addon/brotab/)
- [CSS Scan](https://getcssscan.com/)
- [Web Developer](https://addons.mozilla.org/en-US/firefox/addon/web-developer/) - The Web Developer extension adds various web developer tools to the browser.
- [Enchancer For Youtube](https://addons.mozilla.org/en-US/firefox/addon/enhancer-for-youtube/) - Take control of YouTube and boost your user experience!
- [I Don´t care about cookies](https://addons.mozilla.org/en-US/firefox/addon/i-dont-care-about-cookies/) - Get rid of cookie warnings from almost all websites!
- [Raindrop](https://addons.mozilla.org/en-US/firefox/addon/raindropio/) - All-in-one bookmark manager
- [uBlock Origin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/) - Finally, an efficient wide-spectrum content blocker. Easy on CPU and memory.
- [Undo Close Tab](https://addons.mozilla.org/en-US/firefox/addon/undoclosetabbutton/) - Allows you to restore the tab you just closed with a single click—plus it can offer a list of recently closed tabs within a convenient context menu.
- [Markdown Web Clipper](https://addons.mozilla.org/en-US/firefox/addon/markdownload/) - This extension works like a web clipper, but it downloads articles in a markdown format. Turndown and Readability.js are used as core libraries. It is not guaranteed to work with all websites.
- [Grammarly](https://addons.mozilla.org/en-US/firefox/addon/grammarly-1/) - Improve your writing with Grammarly's communication assistance. Spell check, grammar check, and punctuation check in one tool.
- [Copy as Markdown](https://addons.mozilla.org/en-US/firefox/addon/copy-as-markdown/) - Copy Links, Tabs & Images as Markdown via right clicks
- [Vue Dev Tools](https://addons.mozilla.org/en-US/firefox/addon/vue-js-devtools/) - DevTools extension for debugging Vue.js applications.
- [Firemonkey](https://addons.mozilla.org/en-US/firefox/addon/firemonkey/) - Super Lightweight User Script and Style Manager.
- [Google Lighthouse](https://addons.mozilla.org/en-US/firefox/addon/google-lighthouse/) - Lighthouse is an open-source, automated tool for improving the performance, quality, and correctness of your web apps.
- [EditThisCookie](https://addons.mozilla.org/en-US/firefox/addon/etc2/) - EditThisCookie is a cookie manager. You can add, delete, edit, search, protect and block cookies!
- [Smart HTTPS](https://addons.mozilla.org/en-US/firefox/addon/smart-https-revived/) - This extension automatically changes HTTP web addresses to the secure HTTPS, whenever possible.
- [JSON Light](https://addons.mozilla.org/en-US/firefox/addon/json-lite/) - Fast JSON viewer - highlights, shows items count/size, handles large files.
- [WhatFont](https://addons.mozilla.org/en-US/firefox/addon/zjm-whatfont/) - A wrapper for Chengyin Liu's WhatFont tool
- [Whappalyzer](https://addons.mozilla.org/en-US/firefox/addon/wappalyzer/) - Identify technologies on websites.
- [VideoDownloaderHelper](https://addons.mozilla.org/en-US/firefox/addon/video-downloadhelper/) - The easy way to download and convert Web videos from hundreds of YouTube-like sites.
- [User Agent switcher](https://addons.mozilla.org/en-US/firefox/addon/user-agent-string-switcher/?utm_source=addons.mozilla.org&utm_medium=referral&utm_content=search)
- [Fake Data](https://addons.mozilla.org/en-US/firefox/addon/fake-data-haterapps/) -  Fill form fields on the fly with fake random data.
- [SimpleLogin](https://addons.mozilla.org/en-US/firefox/addon/simplelogin/)
- [StartPage](https://addons.mozilla.org/en-US/firefox/addon/startpage-private-search)

