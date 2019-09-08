# My Linux machine setup

> This repo contains a List of applications and tools installed on my Linux Machine. This is inspired by nikitavoloboev´s [my-mac-os](https://github.com/nikitavoloboev/my-mac-os), but for Linux Based Systems.

## Table of Contents

- [My Linux machine setup](#my-linux-machine-setup)
  - [Table of Contents](#table-of-contents)
  - [Base system](#base-system)
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
    - [Other](#other)
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
  - [Ops tools](#ops-tools)
    - [Security](#security)
    - [System Utils](#system-utils)
    - [Other](#other-1)
  - [Development Runtimes](#development-runtimes)
  - [Other](#other-2)
    - [Gnome Extensions](#gnome-extensions)
    - [VS Code Extensions](#vs-code-extensions)
  - [Chrome Extensions](#chrome-extensions)

## Base system

As a Developer I need my main OS to be very stable but I also want to have regularly updated packages. After working with Debian based OSes for many years, in 2019 I decided to give a try to [Fedora](https://getfedora.org/).

## Graphical Applications

In this section will be listed all the Graphical Applications. A separate section with Terminal applications after.

### Productivity

- [Libreoffice](https://libreoffice.org) - Office suite.
- [Joplin](https://joplinapp.org/) - An open source note taking and to\-do application with synchronisation capabilities
- [Gnome Calendar](https://wiki.gnome.org/Apps/Calendar) - Calendar application for GNOME
- [Gnome Contacts](https://wiki.gnome.org/Apps/Contacts) - Easy access to my Contacts List, syncted with Google Contacts.
- [Notion (Web App)](https://www.notion.so) - My personal Knowledge base and notes application.
- [Trello (Web App)](https://www.trello.com) - Todolist application.

### Internet

- [Google Chrome](https://www.google.com/chrome/) - My primary browser
- [Firefox](https://www.mozilla.org/pt-PT/firefox/) - My secondary browser
- [Dropbox](https://www.dropbox.com/home#/)
- [Transmission](https://transmissionbt.com/) - Torrent client
- [uget](https://ugetdm.com/) - Download manager
- [Polari](https://wiki.gnome.org/Apps/Polari) - Gnome IRC client.
- [Skype](https://www.skype.com/) - Official Skype Application.
- [Slack](https://slack.com) - Official Slack application.
- [Ramme](https://github.com/terkelg/ramme) - Unofficial Instagram Desktop App
- [Discord](https://discordapp.com/) - Free Voice and Text Chat for Gamers
- [pennywise](https://github.com/kamranahmedse/pennywise) -  Cross-platform application to open any website or media in a floating window
- [Gufw Firewall](http://gufw.org/) - Firewall
  
### Graphics & Design

- [GIMP](https://www.gimp.org/) - GNU Image Manipulation Program
- [figma-linux](https://github.com/ChugunovRoman/figma-linux) - Figma is the first interface design tool based in the browser, making it easier for teams to create software
- [Flameshot](https://github.com/lupoDharkael/flameshot) - Powerful yet simple to use screenshot software with annotation support and easy upload to Imgur.
- [Peek](https://github.com/phw/peek) - Simple animated GIF screen recorder with an easy to use interface
- [Image Optimizer](https://flathub.org/apps/details/com.github.gijsgoudzwaard.image-optimizer) - Simple lossless image compression.
- [XnConvert](https://www.xnview.com/en/xnconvert/) - Batch Image Processing, Image Convertor, Image Resizer
- [gpick](http://www.gpick.org/) - Gpick is an advanced color picker and palette editing tool.
- [drawio-desktop](https://github.com/jgraph/drawio-desktop) - Official electron build of draw.io
- [WireframeSketcher](https://wireframesketcher.com/) - Wireframing Tool for Professionals
- [Graphviz](https://www.graphviz.org/) - Graph Visualization Software
- [XMind](https://www.xmind.net/) -  Mind Mapping Software

### Sound & Video

- [Spotify](https://www.spotify.com/) - Music for everyone.
- [Kdenlive](http://www.kdenlive.org/) - Video editor
- [Kazam](https://launchpad.net/kazam) - Screentast tool for linux
- [VLC](http://www.videolan.org/vlc/) - Media player
- [EasyTag](https://wiki.gnome.org/Apps/EasyTAG) - Audio file metadata editor
- [Audacity](https://sourceforge.net/projects/audacity/) - Audio editor
- [Sound Recorder](https://wiki.gnome.org/Apps/SoundRecorder) - A simple and modern sound recorder
- [Lollypop](https://wiki.gnome.org/Apps/Lollypop) - Lollypop is a modern music player for GNOME.
- [FF-Multi-Converter](https://launchpad.net/ffmulticonverter/+packages) - Convert files between multiple formats
- [Gnome Podcasts](https://wiki.gnome.org/Apps/Podcasts) - Listen to your favorite podcasts.
- [Gradio](https://flathub.org/apps/details/de.haeckerfelix.gradio) - Find and listen to internet radio stations.
- [Headset](https://headsetapp.co/) - Desktop Music Player Built on YouTube And Reddit.
- [youtube-dl-gui](https://github.com/MrS0m30n3/youtube-dl-gui) - A cross platform front\-end GUI of the popular youtube-dl.

### Development Tools

- [JetBrains Toolbox App](https://www.jetbrains.com/toolbox/app/) -  Manage Your Jetbrains Tools with Ease.
    - [PHPStorm](https://www.jetbrains.com/phpstorm/) - The Best PHP IDE by Jetbrains.
    - [Intelij](https://www.jetbrains.com/idea/) - Java and Android IDE.
    - [WebStorm](https://www.jetbrains.com/webstorm/) - General purpose Web IDE.
    - [GoLand](https://www.jetbrains.com/go/) - GoLand is a cross-platform IDE built specially for Go developers
- [Visual Studio Code](https://code.visualstudio.com/) - My text editor of choice
- [Cacher](https://www.cacher.io/) - Code snippet organizer for pros
- [Meld](http://meldmerge.org/) - Meld is a visual diff and merge tool targeted at developers
- [GitKraken](https://www.gitkraken.com/) - The legendary Git GUI client for Windows, Mac and Linux
- [Docker](https://www.docker.com/) - The Dev to Ops Choice for Container Platforms,
- [VirtualBox](https://www.virtualbox.org/) - VirtualBox is a powerful x86 and AMD64/Intel64 virtualization product for enterprise as well as home use.
- [Postman](https://www.getpostman.com/) - Rest API Client
- [Regex Tester](https://flathub.org/apps/details/com.github.artemanufrij.regextester) - A simple app for testing regular expressions.
- [Glade](https://glade.gnome.org/) -  A User Interface Designer for Gnome based applications.
- [DBeaver](https://flathub.org/apps/details/io.dbeaver.DBeaverCommunity) - Universal Database Manager

### Utilities

- [Ulauncher](https://ulauncher.io/) - Application Launcher for Linux. A Linux alternative to [Alfted](https://www.alfredapp.com/)
- [Tilix](https://github.com/gnunn1/tilix) - A tiling terminal emulator for Linux using GTK+ 3
- [Bleachbit](https://www.bleachbit.org/) - System cleaner tool
- [Menulibre](https://launchpad.net/menulibre) - Menu editor
- [Stacer](https://github.com/oguzhaninan/Stacer) - Linux System Optimizer and Monitoring
- [GParted](https://gparted.sourceforge.io/) - GParted is a free partition editor for graphically managing your disk partitions
- [Crashplan](https://www.crashplan.com/en-us/) - Automatic and continuous backup to the cloud
- [Font Finder](https://flathub.org/apps/details/io.github.mmstick.FontFinder) - An application for browsing and installing fonts from Google's font archive from the comfort of your Linux desktop.
- [Cryptomator](https://cryptomator.org/) - Free client-side encryption for your cloud files.
- [hawkeye](https://github.com/brpaz/hawkeye) - Hawkeye is a command line GTK Application that allow to quickly open PDFs, Markkown Files, Images and Websites in a "small" window, somewhat inspired by MacOS quicklook.
- [Grsync](https://sourceforge.net/projects/grsync/) - Grsync is used to synchronize folders, files and make backups. It is a rsync GUI (Graphical User Interface).

### Games

- [Steam](https://store.steampowered.com)
- [Gens/GS - Sega Retro](https://segaretro.org/Gens/GS)
- [Mines](https://wiki.gnome.org/Apps/Mines)

### Themes and Icons

- [nana-4/materia-theme](https://github.com/nana-4/materia-theme) - A Material Design theme for GNOME/GTK+ based desktop environments
- [papirus-icon-theme](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme) - Papirus icon theme for Linux.

### Fonts

* [tonsky/FiraCode](https://github.com/tonsky/FiraCode) - Monospaced font with programming ligatures
* [i-tu/Hasklig: Hasklig](https://github.com/i-tu/Hasklig) -  a code font with monospaced ligatures

### Other

- [Foliate](https://flathub.org/apps/details/com.github.johnfactotum.Foliate) - Epub Reader

---

## Terminal Applications

A big part of my Development life is spent on the Terminal, so having a good set of tools there is essential.

### Shell configuration

I use ZSH shell with the following extras:

- [zplug/zplug: A next\-generation plugin manager for zsh](https://github.com/zplug/zplug)
- [zsh-completions](https://github.com/zsh-users/zsh-completions) - Additional completion definitions for Zsh.
- [zsh-you-should-use](https://github.com/MichaelAquilina/zsh-you-should-use) - ZSH plugin that reminds you to use existing aliases for commands you just typed
- [zsh\-users/zsh-history-substring-search](https://github.com/zsh-users/zsh-history-substring-search) - ZSH port of Fish history search (up arrow)
- [zsh\-users/zsh-completions](https://github.com/zsh-users/zsh-completions) -  Additional completion definitions for Zsh.
- [zsh\-users/zsh\-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) -  Fish-like autosuggestions for Zsh.
- [Powerlevel9k/powerlevel9k](https://github.com/Powerlevel9k/powerlevel9k) - The most awesome Powerline theme for ZSH around.

### File Navigation and Search

- [urbainvaes/fzf-marks](https://github.com/urbainvaes/fzf-marks) - Plugin to manage bookmarks in bash and zsh
- [agkozak/zsh-z](https://github.com/agkozak/zsh-z) - Jump quickly to directories that you have visited "frecently". A native ZSH port of z.
- [ranger](https://github.com/ranger/ranger) - A VIM-inspired filemanager for the console.
- [junegunn/fzf](https://github.com/junegunn/fzf) -  A command-line fuzzy finder
- [facebook/PathPicker](https://github.com/facebook/pathpicker/) - PathPicker accepts a wide range of input/output from git commands, grep results, searches pretty much anything.After parsing the input, PathPicker presents you with a nice UI to select which files you're interested in. After that you can open them in your favorite editor or execute arbitrary commands.
- [fd](https://github.com/sharkdp/fd) - A simple, fast and user-friendly alternative to 'find'
- [ripgrep](https://github.com/BurntSushi/ripgrep) - ripgrep recursively searches directories for a regex pattern.

### Text Mainuplation

- [vim](https://vim.org) with [vim-plug](https://github.com/junegunn/vim-plug) - Terminal based text editor.
- [ccat](https://github.com/jingweno/ccat) - Colored cat.
* [jq](https://github.com/stedolan/jq) - Command-line JSON processor.
* [antonmedv/fx](https://github.com/antonmedv/fx) - Command-line tool and terminal JSON viewer.
* [mikefarah/yq](https://github.com/mikefarah/yq) -  yq is a portable command-line YAML processor.
* [markdown-toc](https://github.com/jonschlinkert/markdown-toc) - Generate a markdown TOC (table of contents) for a README or any markdown files, using remgearkable.
* [citycide/tablemark-cli](https://github.com/citycide/tablemark-cli) - Generate markdown tables from JSON data at the command line.
* [pandoc](https://github.com/jgm/pandoc) - Universal markup converter
- [sindresorhus/parse-columns-cli](https://github.com/sindresorhus/parse-columns-cli) - Parse text columns, like the output of unix commands. Returns JSON that you can manipulate with tools like jq or underscore-cli.
- [mdless](https://github.com/MikeyBurkman/mdless) -  Markdown Viewer for the CLI with highlighting and paging
- [lnav](http://lnav.org/) - The Log File Navigator
- [sindresorhus/hasha-cli](https://github.com/sindresorhus/hasha-cli) - hashing made simple. Get the hash of text or stdin.

### Multimedia

- [jarun/imgp](https://github.com/jarun/imgp) - Multi-core batch image resizer and rotator
- [svg/svgo](https://github.com/svg/svgo) - Node.js tool for optimizing SVG files
- [youtube-dl](https://github.com/rg3/youtube-dl) - Command-line program to download videos from YouTube.com and other video sites
- [asciinema](https://asciinema.org/) - Record and share your terminal sessions, the right way
- [svg-term-cli](https://github.com/marionebl/svg-term-cli) - Share terminal sessions via SVG and CSS]

### Networking

- Netstat
- [sindresorhus/get-port-cli](https://github.com/sindresorhus/get-port-cli) - Get an available port

### Http Tools

- [httpie](https://github.com/jakubroztocil/httpie) - Modern command line HTTP client – user-friendly curl alternative with intuitive UI, JSON support, syntax highlighting, wget-like downloads, extensions, etc
- [Artillery](https://artillery.io/) - A modern load testing toolkit
- [wg/wrk](https://github.com/wg/wrk) - Modern HTTP benchmarking tool

### Package Managers

- [composer](https://getcomposer.org/) - Dependency Manager for PHP
- [Yarn](https://yarnpkg.com/en/) - Modern Javascript Package manager.

### Version Control

- [hub](https://github.com/github/hub) - hub helps you win at git.
- [lab](https://github.com/zaquestion/lab) - Lab wraps Git or Hub, making it simple to clone, fork, and interact with repositories on GitLab
- [tig](https://github.com/jonas/tig) - Text-mode interface for git
- [git-semver](https://github.com/ziishaned/git-semver) - A CLI tool to generate semver compliant tags for your git repositories 
- [git-extras](https://github.com/tj/git-extras) - GIT utilities, repo summary, repl, changelog population, author commit percentages and more
- [conventional-changelog](https://github.com/conventional-changelog/conventional-changelog/tree/master/packages/conventional-changelog-cli#readme)
- [commitizen/cz-cli](https://github.com/commitizen/cz-cli) - The commitizen command line utility.
- [cheton/github-release-cli](https://github.com/cheton/github-release-cli) - A command-line tool for managing release assets on a GitHub repository
- [semantic\-release/semantic\-release](https://github.com/semantic-release/semantic-release) - Fully automated version management and package publishing.
- [goreleaser/goreleaser](https://github.com/goreleaser/goreleaser) - Deliver Go binaries as fast and easily as possible.
- [arc90/git-sweep](https://github.com/arc90/git-sweep) - : A command-line tool that helps you clean up Git branches that have been merged into master.
- [cezaraugusto/mklicense](https://github.com/cezaraugusto/mklicense) -  CLI tool for generating Licenses\. Easily\.
- [TejasQ/add-gitignore](https://github.com/TejasQ/add-gitignore) -  An interactive CLI tool that adds a .gitignore to your projects.

### Project Scaffolding

- [saojs/sao](https://github.com/saojs/sao) - : Futuristic scaffolding tool.
- [hugo](https://github.com/gohugoio/hugo) - The world’s fastest framework for building websites.
- [Vue CLI 3](https://cli.vuejs.org/) - Standard Tooling for Vue.js Development.
- [vuejs/vuepress](https://github.com/vuejs/vuepress) - Minimalistic Vue-powered static site generator
- [@gridsome/cli](https://www.npmjs.com/package/@gridsome/cli) - A command line tool for creating new Gridsome projects.
- [Symfony CLI](https://symfony.com/download) - Symfony command line tool
- [serverless/serverless](https://github.com/serverless/serverless) - Serverless Framework – Build web, mobile and IoT applications with serverless architectures using AWS Lambda, Azure Functions, Google CloudFunctions & more!
- [gatsby-cli](https://www.npmjs.com/package/gatsby-cli) - The Gatsby command line interface (CLI). It is used to perform common functionality, such as creating a Gatsby application based on a starter, spinning up a hot-reloading local development server, and more!
- [kefranabg/readme-md-generator](https://github.com/kefranabg/readme-md-generator) - CLI that generates beautiful README.md files]
  
### Snippets and Cheat sheets

- [CacherApp/cacher\-cli](https://github.com/CacherApp/cacher-cli) - The command line interface to Cacher.
- [tldr](https://github.com/tldr-pages/tldr) - Simplified and community\-driven man pages.
- [pet](https://github.com/knqyf263/pet) - Simple command\-line snippet manager, written in Go
- [santinic/how2](https://github.com/santinic/how2) -  stackoverflow from the terminal
- [Jcambass/hintme](https://github.com/Jcambass/hintme) - stupid simple CLI Client for devhints.io
- [sgentle/caniuse-cmd](https://github.com/sgentle/caniuse-cmd) - Caniuse command line tool.

### Cloud clients

* [doctl](https://github.com/digitalocean/doctl) - A command line tool for DigitalOcean services.
* [gcloud](https://cloud.google.com/sdk/gcloud/) - Google Cloud SDK.
* [Aws cli](https://aws.amazon.com/cli) - AWS Command Line Interface.
* [Netlify Command Line Tools](https://www.netlify.com/docs/cli/) - Netlify’s command line tools let you deploy sites or configure continuous deployment straight from the command line.
* [The Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli) - The Heroku Command Line Interface (CLI) makes it easy to create and manage your Heroku apps directly from the terminal. It’s an essential part of using Heroku.
* [danielpigott/cloudflare-cli](https://github.com/danielpigott/cloudflare-cli) - CLI for interacting with Cloudflare

### Docker Tools

- [docker-compose](https://github.com/docker/compose) - Define and run multi-container applications with Docker
- [ctop](https://github.com/bcicen/ctop) - Top-like interface for container metrics
- [dive](https://github.com/wagoodman/dive) - A tool for exploring each layer in a docker image
- [stern](https://github.com/wercker/stern) - Multi pod and container log tailing for Kubernetes
- [minikube](https://github.com/kubernetes/minikube) - Run Kubernetes locally
- [kubectl](https://github.com/kubernetes/kubernetes/tree/master/pkg/kubectl) - Kubernetes Control
- [kubectx](https://github.com/ahmetb/kubectx) - Fast way to switch between clusters and namespaces in kubectl
- [lazydocker](https://github.com/jesseduffield/lazydocker) - The lazier way to manage everything docker

## Ops tools

- [Terraform](https://www.terraform.io/) - Write, Plan, and Create Infrastructure as Code.
- [Ansible](https://www.ansible.com/) - Simple, agentless IT automation that anyone can use.

### Security

- [pwgen](https://linux.die.net/man/1/pwgen) - make pronounceable passwords.
- [lastpass/lastpass-cli](https://github.com/lastpass/lastpass-cli) - LastPass command line interface tool

### System Utils

- [htop](https://github.com/hishamhm/htop) - htop is an interactive text-mode process viewer for Unix systems.
- [bcicen/ctop](https://github.com/bcicen/ctop) - Top-like interface for container metrics.
- [fkill-cli](https://github.com/sindresorhus/fkill-cli) - Fabulously kill processes. Cross-platform.
- [trash-cli](https://github.com/sindresorhus/trash-cli) - Move files and folders to the trash.
- [tmux](https://github.com/tmux/tmux) and [tmuxp](https://github.com/tmux-python/tmuxp) - Terminal multiplexer and session manager.
- [yadm](https://github.com/TheLocehiliosan/yadm) - Dotfiles Manager.
- [direnv](https://direnv.net/) - direnv is an extension for your shell. It augments existing shells with a new feature that can load and unload environment variables depending on the current directory.
- [ncdu](https://linux.die.net/man/1/ncdu) - Disk usage visualization from terminal.
- [nicolargo/glances](https://github.com/nicolargo/glances) - Glances an Eye on your system. A top/htop alternative for GNU/Linux, BSD, Mac OS and Windows operating systems.

### Other

- [localtunnel/localtunnel](https://github.com/localtunnel/localtunnel) - expose your machine to the world.
- [FiloSottile/mkcert: A simple zero-config tool to make locally trusted development certificates with any names you'd like.](https://github.com/FiloSottile/mkcert)
- [serverless/serverless](https://github.com/serverless/serverless)
- [mycli](https://www.mycli.net/) - MyCLI is a command line interface for MySQL, MariaDB, and Percona with auto-completion and syntax highlighting.
- [carbon-now-cli](https://github.com/mixn/carbon-now-cli) - Beautiful images of your code — from right inside your terminal.
- [figlet](http://www.figlet.org/) - FIGlet is a program for making large letters out of ordinary text
- [Teleconsole](https://www.teleconsole.com/) - your UNIX terminal in seconds!
- [sitespeed.io](https://github.com/sitespeedio/sitespeed.io) - Open source tool that helps you monitor, analyze and optimize your website speed and performance, based on performance best practices advices.
- [mermaidjs/mermaid.cli](https://github.com/mermaidjs/mermaid.cli) - Generate Diagrams using Mermaid.
- [Devilspie2](http://www.nongnu.org/devilspie2/) - Devilspie2 is a window matching utility, allowing the user to perform scripted actions on windows as they are created. For example you can script a terminal program to always be positioned at a specific screen position, or position a window on a specific workspace
- [wmctrl](https://linux.die.net/man/1/wmctrl) - wmctrl is a command that can be used to interact with an X Window manager that is compatible with the EWMH/NetWM specification.

## Development Runtimes

* PHP
* NodeJS
* Golang
* Ruby
* Python 3

---

## Other

### Gnome Extensions

- [Caffeine](https://extensions.gnome.org/extension/517/caffeine/) - Disable the screensaver and auto suspend
- [Clipboard Indicator](https://extensions.gnome.org/extension/779/clipboard-indicator/) - Clipboard Manager extension for Gnome-Shell - Adds a clipboard indicator to the top panel, and caches clipboard history.
- [Coverflow Alt-Tab](https://extensions.gnome.org/extension/97/coverflow-alt-tab/) - Replacement of Alt-Tab, iterates through windows in a cover-flow manner.
- [Emoji Selector](https://extensions.gnome.org/extension/1162/emoji-selector/) - This extension provides a parametrable popup menu displaying most emojis, clicking on an emoji copies it to the clipboard.
- [GSConnect](https://extensions.gnome.org/extension/1319/gsconnect/) - KDE Connect allows devices to securely share content like notifications or files and other features like SMS messaging and remote control.
- [TopIcons Redux](https://extensions.gnome.org/extension/1497/topicons-redux/) - Displays legacy tray icons in the GNOME Shell top panel. Rewritten fork of TopIcons Plus.
- [Notifications Alert](https://extensions.gnome.org/extension/258/notifications-alert-on-user-menu/) - Whenever there is an unread notification (e.g. chat messages), blinks the message in the user's menu with a color chosen by the user.
- [Time ++](https://extensions.gnome.org/extension/1238/time/) - A todo.txt manager, time tracker, timer, stopwatch, pomodoro, and alarm clock
- [User Themes](https://extensions.gnome.org/extension/19/user-themes/)
- [Vitals](https://extensions.gnome.org/extension/1460/vitals/) - A glimpse into your computer's temperature, voltage, fan speed, memory usage, processor load, system resources, network speed and storage stats.
- [Argos](https://extensions.gnome.org/extension/1176/argos/) - Create GNOME Shell extensions in seconds.
- [Auto Move Windows](https://extensions.gnome.org/extension/16/auto-move-windows/) - Move applications to specific workspaces when they create windows.
- [Status Area Horizontal Spacing](https://extensions.gnome.org/extension/355/status-area-horizontal-spacing/)
- [Do Not Disturb](https://extensions.gnome.org/extension/1480/do-not-disturb/) - Activate or deactivate do not disturb mode.
- [gTile](https://extensions.gnome.org/extension/28/gtile/) - Tile windows on a grid.
- [Cast to TV](https://extensions.gnome.org/extension/1544/cast-to-tv/) - Cast files to Chromecast, web browser or media player app over local network.
- [Docker Containers Extension Fork](https://extensions.gnome.org/extension/1894/docker-containers-extension/) - Docker containers list on GNOME
- [Laine](https://extensions.gnome.org/extension/937/laine/) - Volume control extension.
- [Argos](https://extensions.gnome.org/extension/1176/argos/) - Create GNOME Shell extensions in seconds.
    - [pionl/bitbar-gitlab-ci](https://github.com/pionl/bitbar-gitlab-ci) -  Shows currently running pipelines from your GitLab in your bar.
    - [wrtsprt/circle\-ci\-bitbar](https://github.com/wrtsprt/circle-ci-bitbar) - BitBar plugin to monitor CircleCI status. Written in ruby.

### VS Code Extensions

* abusaidm.html-snippets
* AdamCaviness.theme-monokai-dark-soda
* akamud.vscode-caniuse
* AlanWalk.markdown-toc
* alefragnani.project-manager
* andischerer.theme-atom-one-dark
* anseki.vscode-color
* bajdzis.vscode-twig-pack
* bbenoist.vagrant
* be5invis.toml
* benjaminromano.typings-installer
* brpaz.file-templates
* castwide.solargraph
* christian-kohler.npm-intellisense
* codezombiech.gitignore
* CoenraadS.bracket-pair-colorizer
* dbaeumer.vscode-eslint
* dbalage.vscode-stylesheet-formatter
* dbankier.vscode-gist
* deerawan.vscode-dash
* dinhani.divider
* donjayamanne.jquerysnippets
* DotJoshJohnson.xml
* eamodio.gitlens
* EditorConfig.EditorConfig
* eg2.vscode-npm-script
* emilast.LogFileHighlighter
* ericadamski.carbon-now-sh
* eriklynd.json-tools
* felixfbecker.php-debug
* felixrieseberg.vsc-travis-ci-status
* gio00.css-inline
* haaaad.ansible
* hollowtree.vue-snippets
* HookyQR.beautify
* idleberg.badges
* idleberg.icon-fonts
* ikappas.composer
* ipedrazas.kubernetes-snippets
* JakeWilson.vscode-placeholder-images
* jcmordan.mark-as-excluded
* jerriepelser.copy-markdown-as-html
* jgsqware.gitlab-ci-templates
* joelday.docthis
* josa.markdown-table-formatter
* liuji-jim.vue
* MattiasPernhult.vscode-todo
* mauve.terraform
* michelemelluso.gitignore
* mikestead.dotenv
* mindginative.terraform-snippets
* mohsen1.prettify-json
* mrmlnc.vscode-autoprefixer
* ms-kubernetes-tools.vscode-kubernetes-tools
* ms-python.python
* msjsdiag.debugger-for-chrome
* nikitaKunevich.snippet-creator
* octref.vetur
* octref.vscode-json-transform
* pflannery.vscode-versionlens
* qinjia.view-in-browser
* ragingwind.web-manifest-snippets
* rebornix.project-snippets
* rebornix.ruby
* redhat.vscode-yaml
* reflog.jsonresume
* rpinski.shebang-snippets
* rubbersheep.gi
* ryu1kn.annotator
* Shan.code-settings-sync
* shanoor.vscode-nginx
* Sophisticode.php-formatter
* tanato.vscode-gulp
* technosophos.vscode-helm
* thomas-baumgaertner.vcl
* tushortz.python-extended-snippets
* Tyriar.lorem-ipsum
* vladmrnv.expresssnippet
* wcwhitehead.bootstrap-3-snippets
* whatwedo.twig
* wholroyd.jinja
* wmontalvo.vsc-meta-snippet
* xabikos.ReactSnippets
* xyz.local-history
* ymotongpoo.licenser
* yzhang.markdown-all-in-one
* zhuangtongfa.Material-theme
* Zignd.html-css-class-completion

## Chrome Extensions

* 365Scores - Live Scores and Sports News
* Auto Replay for YouTube™
* Blackfire Companion
* Copycat
* Copyfish 🐟 Free OCR Software
* Create Link
* Docs
* DownAlbum
* EditThisCookie
* Export links of all extensions
* Feedly Subscribe Button
* GNOME Shell integration
* Google Docs Offline
* Google Drive
* Google Keep
* Google Maps
* Google Photos
* Grammarly for Chrome
* I don't care about cookies
* JetBrains Toolbox Extension
* JSON Editor Online
* JSON Formatter
* Kindle Cloud Reader
* LastPass: Free Password Manager
* Notion Web Clipper
* Omnibox for Github
* Photo Zoom for Facebook
* Picture-in-Picture Extension (by Google)
* Qlearly - Tab and Bookmark Manager
* Saka
* Save to Pocket
* SearchPreview
* Sheets
* Slides
* Speedtest by Ookla
* Split Tabs
* StackEdit
* Tab to Window/Popup - Keyboard Shortcut
* Trello
* TurboNote
* TweetDeck
* Twitter
* uBlock Origin
* Vue.js devtools
* Web Developer
* WhatFont
* Cacher
* Diigo Web Collector - Capture and Annotate
* imgur Uploader
* Linkclump
* Office Editing for Docs, Sheets & Slides
* Pinterest Save Button
* The Great Suspender
* Xdebug helper
