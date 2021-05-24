# My Linux machine setup

> A List of applications and tools installed on my Linux Machine. This is inspired by nikitavoloboev´s [my-mac-os](https://github.com/nikitavoloboev/my-mac-os), but for Linux Based Systems.

For an automated provision scripts, powered by Ansible, please check the [provision](provision) folder.

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
    - [Graphics & Design](#graphics--design)
    - [Sound & Video](#sound--video)
    - [Development Tools](#development-tools)
    - [Utilities](#utilities)
    - [Games](#games)
    - [Themes and Icons](#themes-and-icons)
    - [Fonts](#fonts)
  - [Terminal Applications](#terminal-applications)
    - [Shell configuration](#shell-configuration)
    - [File Navigation and Search](#file-navigation-and-search)
    - [Text Mainuplation](#text-mainuplation)
    - [Multimedia](#multimedia)
    - [Networking](#networking)
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
  - [Other](#other-1)
    - [Gnome Extensions](#gnome-extensions)
    - [VS Code Extensions](#vs-code-extensions)
  - [Firefox Extensions](#firefox-extensions)
  - [Ulauncher Extensions](#ulauncher-extensions)

## Graphical Applications

In this section will be listed all the Graphical Applications. A separate section with Terminal applications after.

### Productivity

* [Libreoffice](https://libreoffice.org) - Office suite.
* [Gnome Calendar](https://wiki.gnome.org/Apps/Calendar) - Calendar application for GNOME
* [Gnome Contacts](https://wiki.gnome.org/Apps/Contacts) - Easy access to my Contacts List, syncted with Google Contacts.
* [Marker](https://flathub.org/apps/details/com.github.fabiocolacio.marker) - Powerful markdown editor for the GNOME desktop.
* [Planner](https://flathub.org/apps/details/com.github.alainm23.planner) - Native TODO list application.
* [Foliate](https://flathub.org/apps/details/com.github.johnfactotum.Foliate) - Epub Reader
* [Workspaces](https://flathub.org/apps/details/com.github.devalien.workspaces) - Workspaces lets you configure and quickly launch all you need to work on a project. It can open in a second different instances of code, a specific website and a directory.
* [Dendron](https://www.dendron.so/) - Dendron makes it easy to add, find and share anything in seconds, regardless of how much information you have

---

### Internet

* [Firefox](https://www.mozilla.org/pt-PT/firefox/) - My primary browser
* [Google Chrome](https://www.google.com/chrome/) - My secondary browser
* [Dropbox](https://www.dropbox.com/home#/) - Easly share files between computers.
* [Transmission](https://transmissionbt.com/) - Torrent client
* [uget](https://ugetdm.com/) - Download manager
* [Remmina](https://remmina.org/) - A feature rich Remote Desktop Application.
* [Skype](https://www.skype.com/) - Official Skype Application.
* [Slack](https://slack.com) - Official Slack application.
* [Discord](https://discordapp.com/) - Free Voice and Text Chat for Gamers
* [Youp for WhatsApp](https://flathub.org/apps/details/com.gigitux.youp) - WhatsApp GTK Client
* [Signal Desktop](https://flathub.org/apps/details/org.signal.Signal)

---

### Graphics & Design

* [GIMP](https://www.gimp.org/) - GNU Image Manipulation Program
* [figma-linux](https://github.com/ChugunovRoman/figma-linux) - Figma is the first interface design tool based in the browser, making it easier for teams to create software
* [Flameshot](https://github.com/lupoDharkael/flameshot) - Powerful yet simple to use screenshot software with annotation support and easy upload to Imgur.
* [Peek](https://github.com/phw/peek) - Simple animated GIF screen recorder with an easy to use interface
* [Image Optimizer](https://flathub.org/apps/details/com.github.gijsgoudzwaard.image-optimizer) - Simple lossless image compression.
* [XnConvert](https://www.xnview.com/en/xnconvert/) - Batch Image Processing, Image Convertor, Image Resizer
* [drawio-desktop](https://github.com/jgraph/drawio-desktop) - Official electron build of draw.io
* [WireframeSketcher](https://wireframesketcher.com/) - Wireframing Tool for Professionals
* [Graphviz](https://www.graphviz.org/) - Graph Visualization Software
* [Inkscape](https://inkscape.org/) - Design tool
* [Avvie](https://flathub.org/apps/details/com.github.taiko2k.avvie) - A simple tool cropping and downsizing images. Suitable for avatars or cropping photos for use as desktop wallpapers. Convert PNG to JPG. Export in one click to your Pictures folder.
* [Color Picker](https://flathub.org/apps/details/nl.hjdskes.gcolor3) - Choose colors from the picker or the screen
  
---
### Sound & Video

* [Spotify](https://www.spotify.com/) - Music for everyone.
* [Kdenlive](http://www.kdenlive.org/) - Video editor
* [VLC](http://www.videolan.org/vlc/) - Media player
* [EasyTag](https://wiki.gnome.org/Apps/EasyTAG) - Audio file metadata editor
* [Audacity](https://sourceforge.net/projects/audacity/) - Audio editor
* [Lollypop](https://wiki.gnome.org/Apps/Lollypop) - Lollypop is a modern music player for GNOME.
* [FFaudioConverter](https://flathub.org/apps/details/com.github.Bleuzen.FFaudioConverter) - Convert music files between multiple formats
* [Gnome Podcasts](https://wiki.gnome.org/Apps/Podcasts) - Listen to your favorite podcasts.
* [Headset](https://headsetapp.co/) - Desktop Music Player Built on YouTube And Reddit.
* [youtube-dl-gui](https://github.com/MrS0m30n3/youtube-dl-gui) - A cross platform front\-end GUI of the popular youtube-dl.
* [Shortwave](https://flathub.org/apps/details/de.haeckerfelix.Shortwave) - Shortwave is an internet radio player that provides access to a station database with over 25,000 stations.
* [OBS](https://obsproject.com/download) - Open Broadcaster Software to record screencasts and streaming.
* [Kooha](https://flathub.org/apps/details/io.github.seadve.Kooha) - Elegantly record your screen.

---

### Development Tools

* [JetBrains Toolbox App](https://www.jetbrains.com/toolbox/app/) -  Manage Your Jetbrains Tools with Ease.
    * [PHPStorm](https://www.jetbrains.com/phpstorm/) - The Best PHP IDE by Jetbrains.
    * [Intelij](https://www.jetbrains.com/idea/) - Java and Android IDE.
    * [WebStorm](https://www.jetbrains.com/webstorm/) - General purpose Web IDE.
    * [GoLand](https://www.jetbrains.com/go/) - GoLand is a cross-platform IDE built specially for Go developers
* [Visual Studio Code](https://code.visualstudio.com/) - My text editor of choice
* [Cacher](https://www.cacher.io/) - Code snippet organizer for pros
* [Meld](http://meldmerge.org/) - Meld is a visual diff and merge tool targeted at developers
* [GitKraken](https://www.gitkraken.com/) - The legendary Git GUI client for Windows, Mac and Linux.
* [VM VirtualBox](https://www.virtualbox.org/) - VirtualBox is a powerful x86 and AMD64/Intel64 virtualization product for enterprise as well as home use.
* [Postman](https://www.getpostman.com/) - Rest API Client
* [Regex Tester](https://flathub.org/apps/details/com.github.artemanufrij.regextester) - A simple app for testing regular expressions.
* [Glade](https://glade.gnome.org/) -  A User Interface Designer for Gnome based applications.
* [DBeaver](https://flathub.org/apps/details/io.dbeaver.DBeaverCommunity) - Universal Database Manager
* [Spotlight studio](https://stoplight.io/) - The API Design Management Platform powering the world's leading API first companies.
* [Lens](https://k8slens.dev/) - The Kubernetes IDE.
* [Boop](https://github.com/zoeyfyi/Boop-GTK) - Port of @IvanMathy's Boop to GTK, a scriptable scratchpad for developers.

---
### Utilities

* [Ulauncher](https://ulauncher.io/) - Application Launcher for Linux. A Linux alternative to [Alfted](https://www.alfredapp.com/)
* [Tilix](https://github.com/gnunn1/tilix) - A tiling terminal emulator for Linux using GTK+ 3
* [Bleachbit](https://www.bleachbit.org/) - System cleaner tool
* [Menulibre](https://launchpad.net/menulibre) - Menu editor
* [Stacer](https://github.com/oguzhaninan/Stacer) - Linux System Optimizer and Monitoring
* [GParted](https://gparted.sourceforge.io/) - GParted is a free partition editor for graphically managing your disk partitions
* [Restic](https://restic.net/) - Automatic and continuous backup to the cloud.
* [Font Finder](https://flathub.org/apps/details/io.github.mmstick.FontFinder) - An application for browsing and installing fonts from Google's font archive from the comfort of your Linux desktop.
* [Cryptomator](https://cryptomator.org/) - Free client-side encryption for your cloud files.
* [Grsync](https://sourceforge.net/projects/grsync/) - Grsync is used to synchronize folders, files and make backups. It is a rsync GUI (Graphical User Interface).
* [Etcher](https://www.balena.io/etcher/) - Flash OS images to SD cards & USB drives, safely and easily.

---
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

---

## Terminal Applications

A big part of my Development life is spent on the Terminal, so having a good set of tools there is essential.

### Shell configuration

I use ZSH shell with the following extras:

* [zplug](https://github.com/zplug/zplug) - A next-generation plugin manager for zsh
* [zsh-completions](https://github.com/zsh-users/zsh-completions) - Additional completion definitions for Zsh.
* [zsh-you-should-use](https://github.com/MichaelAquilina/zsh-you-should-use) - ZSH plugin that reminds you to use existing aliases for commands you just typed
* [zsh-history-substring-search](https://github.com/zsh-users/zsh-history-substring-search) - ZSH port of Fish history search (up arrow)
* [zsh-completions](https://github.com/zsh-users/zsh-completions) -  Additional completion definitions for Zsh.
* [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) -  Fish-like autosuggestions for Zsh.
* [powerlevel10k](https://github.com/romkatv/powerlevel10k) - A fast reimplementation of Powerlevel9k ZSH theme
* [fonts](https://github.com/powerline/fonts) - Patched fonts for Powerline users.

### File Navigation and Search

* [urbainvaes/fzf-marks](https://github.com/urbainvaes/fzf-marks) - Plugin to manage bookmarks in bash and zsh
* [ranger](https://github.com/ranger/ranger) - A VIM-inspired filemanager for the console.
* [junegunn/fzf](https://github.com/junegunn/fzf) -  A command-line fuzzy finder
* [facebook/PathPicker](https://github.com/facebook/pathpicker/) - PathPicker accepts a wide range of input/output from git commands, grep results, searches pretty much anything.After parsing the input, PathPicker presents you with a nice UI to select which files you're interested in. After that you can open them in your favorite editor or execute arbitrary commands.
* [fd](https://github.com/sharkdp/fd) - A simple, fast and user-friendly alternative to 'find'
* [ripgrep](https://github.com/BurntSushi/ripgrep) - ripgrep recursively searches directories for a regex pattern.
* [chmln/sd](https://github.com/chmln/sd) - Intuitive find & replace CLI (sed alternative)]
* [b4b4r07/enhancd](https://github.com/b4b4r07/enhancd) - A next-generation cd command with your interactive filter
### Text Mainuplation

* [vim](https://vim.org) with [vim-plug](https://github.com/junegunn/vim-plug) - Terminal based text editor.
* [bat](https://github.com/sharkdp/bat) - A cat(1) clone with wings. 
* [jq](https://github.com/stedolan/jq) - Command-line JSON processor.
* [yq](https://github.com/mikefarah/yq) -  yq is a portable command-line YAML processor.
* [tablemark-cli](https://github.com/citycide/tablemark-cli) - Generate markdown tables from JSON data at the command line.
* [pandoc](https://github.com/jgm/pandoc) - Universal markup converter
* [parse-columns-cli](https://github.com/sindresorhus/parse-columns-cli) - Parse text columns, like the output of unix commands. Returns JSON that you can manipulate with tools like jq or underscore-cli.
* [mdless](https://github.com/MikeyBurkman/mdless) -  Markdown Viewer for the CLI with highlighting and paging
* [lnav](http://lnav.org/) - The Log File Navigator
* [hasha-cli](https://github.com/sindrehasha-clisorhus/hasha-cli) - hashing made simple. Get the hash of text or stdin.

### Multimedia

* [jarun/imgp](https://github.com/jarun/imgp) - Multi-core batch image resizer and rotator
* [svg/svgo](https://github.com/svg/svgo) - Node.js tool for optimizing SVG files
* [youtube-dl](https://github.com/rg3/youtube-dl) - Command-line program to download videos from YouTube.com and other video sites
* [asciinema](https://asciinema.org/) - Record and share your terminal sessions, the right way
* [svg-term-cli](https://github.com/marionebl/svg-term-cli) - Share terminal sessions via SVG and CSS]

### Networking

- Netstat
- iotop
- nmap
* [get-port-cli](https://github.com/sindresorhus/get-port-cli) - Get an available port

### Http Tools

* [httpie](https://github.com/jakubroztocil/httpie) - Modern command line HTTP client – user-friendly curl alternative with intuitive UI, JSON support, syntax highlighting, wget-like downloads, extensions, etc
* [Artillery](https://artillery.io/) - A modern load testing toolkit.
* [k6](https://k6.io/) - Load testing for engineering teams.

### Package Managers

* [composer](https://getcomposer.org/) - Dependency Manager for PHP
* [Yarn](https://yarnpkg.com/en/) - Modern Javascript Package manager.

### Version Control

* [cli/cli](https://github.com/cli/cli) - GitHub’s official command line tool
* [hub](https://github.com/github/hub) - hub helps you win at git.
* [lab](https://github.com/zaquestion/lab) - Lab wraps Git or Hub, making it simple to clone, fork, and interact with repositories on GitLab
* [tig](https://github.com/jonas/tig) - Text-mode interface for git
* [git-extras](https://github.com/tj/git-extras) - GIT utilities, repo summary, repl, changelog population, author commit percentages and more
* [arc90/git-sweep](https://github.com/arc90/git-sweep) - : A command-line tool that helps you clean up Git branches that have been merged into master.
* [conventional-changelog](https://github.com/conventional-changelog/conventional-changelog/tree/master/packages/conventional-changelog-cli#readme)
* [commitizen/cz-cli](https://github.com/commitizen/cz-cli) - The commitizen command line utility.
* [semantic-release](https://github.com/semantic-release/semantic-release) - Fully automated version management and package publishing.
* [goreleaser/goreleaser](https://github.com/goreleaser/goreleaser) - Deliver Go binaries as fast and easily as possible.
* [cezaraugusto/mklicense](https://github.com/cezaraugusto/mklicense) -  CLI tool for generating Licenses\. Easily\.
* [TejasQ/add-gitignore](https://github.com/TejasQ/add-gitignore) -  An interactive CLI tool that adds a .gitignore to your projects.

### Project Scaffolding

* [saojs/sao](https://github.com/saojs/sao) - : Futuristic scaffolding tool.
* [hugo](https://github.com/gohugoio/hugo) - The world’s fastest framework for building websites.
* [Vue CLI 3](https://cli.vuejs.org/) - Standard Tooling for Vue.js Development.
* [nuxt/create-nuxt-app](https://github.com/nuxt/create-nuxt-app) - Create Nuxt.js App in seconds.
* [vuejs/vuepress](https://github.com/vuejs/vuepress) - Minimalistic Vue-powered static site generator
* [@gridsome/cli](https://www.npmjs.com/package/@gridsome/cli) - A command line tool for creating new Gridsome projects.
* [Symfony CLI](https://symfony.com/download) - Symfony command line tool
* [serverless/serverless](https://github.com/serverless/serverless) - Serverless Framework – Build web, mobile and IoT applications with serverless architectures using AWS Lambda, Azure Functions, Google CloudFunctions & more!
* [readme-md-generator](https://github.com/kefranabg/readme-md-generator) - CLI that generates beautiful README.md files]
  
### Snippets and Cheat sheets

* [cacher-cli](https://github.com/CacherApp/cacher-cli) - The command line interface to Cacher.
* [tldr](https://github.com/tldr-pages/tldr) - Simplified and community\-driven man pages.
* [sgentle/caniuse-cmd](https://github.com/sgentle/caniuse-cmd) - Caniuse command line tool.
* [out-of-cheese-error/the-way:](https://github.com/out-of-cheese-error/the-way) - A code snippets manager for your terminal.

### Cloud clients

* [doctl](https://github.com/digitalocean/doctl) - A command line tool for DigitalOcean services.
* [Google Cloud SDK](https://cloud.google.com/sdk/gcloud/) - Google Cloud SDK.
* [AWS CLI](https://aws.amazon.com/cli) - AWS Command Line Interface.
* [Netlify Command Line Tools](https://www.netlify.com/docs/cli/) - Netlify’s command line tools let you deploy sites or configure continuous deployment straight from the command line.
* [Vercel CLI](https://vercel.com/cli)
* [The Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli) - The Heroku Command Line Interface (CLI) makes it easy to create and manage your Heroku apps directly from the terminal. It’s an essential part of using Heroku.
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
* [kubeseal](https://github.com/bitnami-labs/sealed-secrets) - CLI tool for encrypt and decrypt Bitnani sealed secrets

## Infrastucture As Code

* [Terraform](https://www.terraform.io/) - Write, Plan, and Create Infrastructure as Code.
* [Ansible](https://www.ansible.com/) - Simple, agentless IT automation that anyone can use.
  * [ansible/ansible-lint](https://github.com/ansible/ansible-lint) - Best practices checker for Ansible
  * [Ansible Galaxy](https://galaxy.ansible.com/) - Jump-start your automation project with great content from the Ansible community. Galaxy provides pre-packaged units of work known to Ansible as roles.
* [Pulumi](https://www.pulumi.com/) -  Modern Infrastructure as Code
* [terratest](https://github.com/gruntwork-io/terratest/releases) - Terratest is a Go library that makes it easier to write automated tests for your infrastructure code. 

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

* [localtunnel/localtunnel](https://github.com/localtunnel/localtunnel) - expose your machine to the world.
* [FiloSottile/mkcert: A simple zero-config tool to make locally trusted development certificates with any names you'd like.](https://github.com/FiloSottile/mkcert)
* [serverless/serverless](https://github.com/serverless/serverless)
* [mycli](https://www.mycli.net/) - MyCLI is a command line interface for MySQL, MariaDB, and Percona with auto-completion and syntax highlighting.
* [figlet](http://www.figlet.org/) - FIGlet is a program for making large letters out of ordinary text
* [sitespeed.io](https://github.com/sitespeedio/sitespeed.io) - Open source tool that helps you monitor, analyze and optimize your website speed and performance, based on performance best practices advices.
* [mermaid.cli](https://github.com/mermaidjs/mermaid.cli) - Generate Diagrams using Mermaid.
* [Devilspie2](http://www.nongnu.org/devilspie2/) - Devilspie2 is a window matching utility, allowing the user to perform scripted actions on windows as they are created. For example you can script a terminal program to always be positioned at a specific screen position, or position a window on a specific workspace
* [wmctrl](https://linux.die.net/man/1/wmctrl) - wmctrl is a command that can be used to interact with an X Window manager that is compatible with the EWMH/NetWM specification.
* [mitmproxy/mitmproxy](https://github.com/mitmproxy/mitmproxy) -  An interactive TLS-capable intercepting HTTP proxy for penetration testers and software developers.
* [pre-commit](https://pre-commit.com/) -  A framework for managing and maintaining multi-language pre-commit hooks.
## Development Runtimes

* PHP
* NodeJS
* Golang
* Ruby
* Python
* Vala

---

## Other

### Gnome Extensions

* [Caffeine](https://extensions.gnome.org/extension/517/caffeine/) - Disable the screensaver and auto suspend
* [Clipboard Indicator](https://extensions.gnome.org/extension/779/clipboard-indicator/) - Clipboard Manager extension for Gnome-Shell - Adds a clipboard indicator to the top panel, and caches clipboard history.
* [Coverflow Alt-Tab](https://extensions.gnome.org/extension/97/coverflow-alt-tab/) - Replacement of Alt-Tab, iterates through windows in a cover-flow manner.
* [Emoji Selector](https://extensions.gnome.org/extension/1162/emoji-selector/) - This extension provides a parametrable popup menu displaying most emojis, clicking on an emoji copies it to the clipboard.
* [GSConnect](https://extensions.gnome.org/extension/1319/gsconnect/) - KDE Connect allows devices to securely share content like notifications or files and other features like SMS messaging and remote control.
* [Always Indicator](https://extensions.gnome.org/extension/2594/always-indicator/) - Always show the new messages indicator on new messages. Features: 1) New message indicator is always shown if there are notifications.
* [Time ++](https://extensions.gnome.org/extension/1238/time/) - A todo.txt manager, time tracker, timer, stopwatch, pomodoro, and alarm clock
* [Vitals](https://extensions.gnome.org/extension/1460/vitals/) - A glimpse into your computer's temperature, voltage, fan speed, memory usage, processor load, system resources, network speed and storage stats.
* [pop-os/shell: Pop!_OS Shell](https://github.com/pop-os/shell) - Pop Shell is a keyboard-driven layer for GNOME Shell which allows for quick and sensible navigation and management of windows. 
* [Auto Move Windows](https://extensions.gnome.org/extension/16/auto-move-windows/) - Move applications to specific workspaces when they create windows.
* [Status Area Horizontal Spacing](https://extensions.gnome.org/extension/355/status-area-horizontal-spacing/)
* [Cast to TV](https://extensions.gnome.org/extension/1544/cast-to-tv/) - Cast files to Chromecast, web browser or media player app over local network.
* [Laine](https://extensions.gnome.org/extension/937/laine/) - Volume control extension.
* [VSCode Search Provider](https://extensions.gnome.org/extension/1207/vscode-search-provider/) - Provide recent VSCode projects as search results in overview
* [Proxy Profiles](https://extensions.gnome.org/extension/3379/proxy-profiles/) - Swich easily between several proxy profiles.

### VS Code Extensions

 
* 42Crunch.vscode-openapi
* adamhartford.vscode-base64
* adrianwilczynski.alpine-js-intellisense
* akamud.vscode-caniuse
* AlanWalk.markdown-toc
* alefragnani.project-manager
* alexkrechik.cucumberautocomplete
* andischerer.theme-atom-one-dark
* anseki.vscode-color
* axetroy.vscode-comment-autocomplete
* be5invis.toml
* benjaminromano.typings-installer
* bradlc.vscode-tailwindcss
* brpaz.contextual-snips
* Cacher.cacher-vscode
* capaj.vscode-exports-autocomplete
* christian-kohler.npm-intellisense
* codezombiech.gitignore
* CoenraadS.bracket-pair-colorizer
* cssho.vscode-svgviewer
* dbaeumer.vscode-eslint
* dinhani.divider
* DotJoshJohnson.xml
* eamodio.gitlens
* EditorConfig.EditorConfig
* eg2.vscode-npm-script
* emilast.LogFileHighlighter
* ericadamski.carbon-now-sh
* eriklynd.json-tools
* esbenp.prettier-vscode
* fauna.faunadb
* felixfbecker.php-debug
* GitHub.vscode-pull-request-github
* GitLab.gitlab-workflow
* golang.go
* haaaad.ansible
* hashicorp.terraform
* idleberg.badges
* idleberg.icon-fonts
* ipedrazas.kubernetes-snippets
* JakeWilson.vscode-placeholder-images
* jcmordan.mark-as-excluded
* jgsqware.gitlab-ci-templates
* johnpapa.vscode-peacock
* mads-hartmann.bash-ide-vscode
* marclipovsky.string-manipulation
* MattiasPernhult.vscode-todo
* michelemelluso.gitignore
* mikestead.dotenv
* milovidov.escape-quotes
* mindginative.terraform-snippets
* ms-azuretools.vscode-docker
* ms-kubernetes-tools.vscode-kubernetes-tools
* ms-python.python
* ms-toolsai.jupyter
* msjsdiag.debugger-for-chrome
* nickdemayo.vscode-json-editor
* octref.vetur
* octref.vscode-json-transform
* Orta.vscode-jest
* pflannery.vscode-versionlens
* qinjia.view-in-browser
* quicktype.quicktype
* rebornix.ruby
* redhat.vscode-yaml
* richie5um2.vscode-sort-json
* rpinski.shebang-snippets
* rubbersheep.gi
* rust-lang.rust
* ryanolsonx.snippet-creator
* ryu1kn.annotator
* sdras.vue-vscode-snippets
* Shan.code-settings-sync
* shanoor.vscode-nginx
* Sophisticode.php-formatter
* sourcegraph.sourcegraph
* stylelint.vscode-stylelint
* thomas-baumgaertner.vcl
* Tim-Koehler.helm-intellisense
* toiroakr.stringified-json-editor
* tsandall.opa
* Tyriar.lorem-ipsum
* ultram4rine.vscode-choosealicense
* vscoss.vscode-ansible
* whatwedo.twig
* wholroyd.jinja
* wingrunr21.vscode-ruby
* wix.vscode-import-cost
* wmontalvo.vsc-meta-snippet
* xyz.local-history
* yzhang.markdown-all-in-one
* zhuangtongfa.material-theme
* Zignd.html-css-class-completion

## Firefox Extensions
 
TODO

## Ulauncher Extensions

* [Raindrop — Ulauncher Extensions](https://ext.ulauncher.io/-/github-brpaz-ulauncher-raindrop) 
* [Dendron — Ulauncher Extensions](https://ext.ulauncher.io/-/github-brpaz-ulauncher-dendron)
* [Window Switcher — Ulauncher Extensions](https://ext.ulauncher.io/-/github-dflock-ulauncher-window-switcher)
* [Workspace Switcher — Ulauncher Extensions](https://ext.ulauncher.io/-/github-dflock-ulauncher-xfwm-workspace-switcher)
* [Obsidian — Ulauncher Extensions](https://ext.ulauncher.io/-/github-mikebarkmin-ulauncher-obsidian)
* [Snippets — Ulauncher Extensions](https://ext.ulauncher.io/-/github-mikebarkmin-ulauncher-snippets)
* [ShortIT — Ulauncher Extensions](https://ext.ulauncher.io/-/github-sergius02-ulauncher-shortit)
* [UUID — Ulauncher Extensions](https://ext.ulauncher.io/-/github-fsevenm-ulauncher-uuid)
* [Timezones — Ulauncher Extensions](https://ext.ulauncher.io/-/github-epholys-ultz)
* [Zealdocs — Ulauncher Extensions](https://ext.ulauncher.io/-/github-kwaadpepper-zealdoc)
* [Color converter — Ulauncher Extensions](https://ext.ulauncher.io/-/github-sergius02-ulauncher-colorconverter)
* [Spotify API — Ulauncher Extensions](https://ext.ulauncher.io/-/github-the-lay-ulauncher-spotify-api)
* [Shortcuts — Ulauncher Extensions](https://ext.ulauncher.io/-/github-brpaz-ulauncher-shortcuts)
* [DockerHub Search — Ulauncher Extensions](https://ext.ulauncher.io/-/github-brpaz-ulauncher-dockerhub)
* [Brotab — Ulauncher Extensions](https://ext.ulauncher.io/-/github-brpaz-ulauncher-brotab)
* [DocSearch — Ulauncher Extensions](https://ext.ulauncher.io/-/github-brpaz-ulauncher-docsearch)
* [IpCopy — Ulauncher Extensions](https://ext.ulauncher.io/-/github-pwnyprod-ulauncher-ipcopy)
* [DuckDuckGo Bangs — Ulauncher Extensions](https://ext.ulauncher.io/-/github-dhelmr-ulauncher-duckduckgo-bangs)
* [Ulauncher Extensions](https://ext.ulauncher.io/-/github-kuenzelit-ulauncher-firefox-bookmarks)
* [Password Generator — Ulauncher Extensions](https://ext.ulauncher.io/-/github-rkarami-ulauncher-password-generator)
* [VirtualBox — Ulauncher Extensions](https://ext.ulauncher.io/-/github-luispabon-ulauncher-virtualbox)
* [Unicode extension — Ulauncher Extensions](https://ext.ulauncher.io/-/github-zensoup-ulauncher-unicode)
* [Converter — Ulauncher Extensions](https://ext.ulauncher.io/-/github-skykooler-ulauncher-conversion)
* [IpCopy — Ulauncher Extensions](https://ext.ulauncher.io/-/github-pwnyprod-ulauncher-ipcopy)
* [jetbrains Recent Projects — Ulauncher Extensions](https://ext.ulauncher.io/-/github-brpaz-ulauncher-jetbrains)
* [GCP Launcher — Ulauncher Extensions](https://ext.ulauncher.io/-/github-zeue-ulauncher-gcp)
* [VSCode Projects Opener — Ulauncher Extensions](https://ext.ulauncher.io/-/github-brpaz-ulauncher-vscode-projects)
* [DigitalOcean — Ulauncher Extensions](https://ext.ulauncher.io/-/github-brpaz-ulauncher-digiralocean)
* [GitHub — Ulauncher Extensions](https://ext.ulauncher.io/-/github-brpaz-ulauncher-github)
* [Status Pages — Ulauncher Extensions](https://ext.ulauncher.io/-/github-brpaz-ulauncher-statuspages)
* [Repl.it — Ulauncher Extensions](https://ext.ulauncher.io/-/github-brpaz-ulauncher-repl)
* [Cloudflare — Ulauncher Extensions](https://ext.ulauncher.io/-/github-brpaz-ulauncher-cloudflare)
* [Netlify — Ulauncher Extensions](https://ext.ulauncher.io/-/github-brpaz-ulauncher-netlify)
* [cdnjs — Ulauncher Extensions](https://ext.ulauncher.io/-/github-brpaz-ulauncher-cdnjs)
* [SSH Launcher — Ulauncher Extensions](https://ext.ulauncher.io/-/github-jetbug123-ulauncher-ssh)
* [Process Killer — Ulauncher Extensions](https://ext.ulauncher.io/-/github-ulauncher-ulauncher-kill)
* [Emoji — Ulauncher Extensions](https://ext.ulauncher.io/-/github-ulauncher-ulauncher-emoji)
* [Timer — Ulauncher Extensions](https://ext.ulauncher.io/-/github-ulauncher-ulauncher-timer)
