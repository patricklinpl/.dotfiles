# macOS-setup

Personal configuration for macOS

## Table of Contents

  * [Zsh](#zsh)
  * [Dev Environment](#dev-environment)
  * [Applications](#applications)
  * [Powerline Font](#powerline-font)
  * [System Preferences](#system-preferences)
  * [Finder Preferences](#finder-preferences)
    * [Show Library folder](#show-library-folder)
    * [Show hidden files](#show-hidden-files)
    * [Show path bar](#show-path-bar)
    * [Show status bar](#show-status-bar)
  * [CLI Usage](#cli-usage)
    * [Bulk Install Applications](#bulk-install-applications)
    * [Youtube\-dl](#youtube-dl)
    * [File\-Conversion](#file-conversion)
    * [File\-Scripts](#file-scripts)
    * [Reduce PDF Sizes with GhostScripts](#reduce-pdf-sizes-with-ghostscripts)
    * [TOC](#toc)
    * [Network Ports](#network-ports)
  * [Acknowledgements](#acknowledgements)

## Zsh

    $ git clone https://github.com/patricklinpl/macOS-setup.git
    $ cd macOS-setup
    $ mv .zshrc ~
    $ mv env.sh ~

## Dev Environment

Sections to install from [sb2nov's mac-setup guide](http://sourabhbajaj.com/mac-setup/):

- Xcode
- Homebrew
  - cask
- iTerm2
  - Zsh
    - Oh My Zsh
- Git
- Python
  - pip
- MySQL
- CPlusPlus
- Java
- Node.js
- Security and Safety

## Applications
- [Bulk install applications](#Bulk-Install-Applications)
- [TotalFinder](https://totalfinder.binaryage.com/)

## Powerline Font

    $ git clone https://github.com/powerline/fonts.git --depth=1
    $ cd fonts
    $ ./install.sh
    $ cd ..
    $ rm -rf fonts

In **iTerm2 > Preferences > Profiles > Text > Change Font >** 14pt Source Code Pro for Powerline

## System Preferences

- **General >** Use dark menu bar and Dock
- **General >** Sidebar icon size: Small
- **General >** Recent items: None
- **General > Allow Handoff between this Mac and your iCloud devices >** off
- **Desktop & Screen Saver > Screen Saver >** Start after: Never
- **Dock > Size >** Small
- **Dock > Remove Auto Switching >**

```
$ defaults write com.apple.dock workspaces-auto-swoosh -bool NO
$ killall Dock
```
- **Dock > Auto-Hide Fast >**


```
defaults write com.apple.dock autohide -bool true && defaults write com.apple.dock autohide-delay -float 0 && defaults write com.apple.dock autohide-time-modifier -float 0 && killall Dock
```

- **Security and Privacy > General >** Require password immediately after sleep or screen saver begins
- **Security and Privacy > Firewall >** On
- **Security and Privacy > Firewall > Firewall Options >** Uncheck Automatically allow built-in software to recive incoming connections
- **Security and Privacy > FileVault >** Turn on FileVault
- **Spotlight >** Uncheck everything
- **Spotlight > Keyboard Shortcuts** Remove both mappings
- **Displays > Display >** Scaled 1440x900
- **Energy Saver > Battery >** Show battery status in menu bar
- **Keyboard > Text >** Disable "Correct spelling automatically"
- **Trackpad > Point & Click > Look up & data detectors>** off
- **Trackpad > Point & Click >** Tap to click
- **Trackpad > Scroll direction: Natural >** off
- **Trackpad > Scroll direction: Smart zoom >** off
- **Trackpad > More Gestures >** Disable: Swipe between pages, App Exposé, Launchpad
- **Trackpad > More Gestures > Mission Control >** Swipe up with four fingers
- **Trackpad > More Gestures > Launchpad >** off
- **Keyboard > Modifer Keys > Windows Keyboard >** Switch: Option & Command 
- **iCloud >** Disable: Photos, Mail, Calendars, Reminders, Notes, Back to My Mac
- **App Store >** Enable: Automatically check for updates | Purchases and In-app Purchases: Require after 15 minutes | Free Downloads: Save Password
- **Bluetooth >** Turn Bluetooth Off
- **Siri >** Disable Siri
- **Date & Time > Clock >** Time options: Show AM/PM | Date options: Show the day of the week, Show date

## Finder Preferences

- **General >** Disable: Hard disks, CDs, DVDs, and iPods, Connected servers | New Finder windows show: Desktop 
- **Sidebar >** Enable: Applications, Desktop, Documents, Downloads, & Hard disks
- **Toolbar** Add path, new folder, delete
- **Sidebar > Add:** Home and Code Directory

### Show Library folder

```shell
chflags nohidden ~/Library
```

### Show hidden files

This can also be done by pressing `command` + `shift` + `.`

```shell
defaults write com.apple.finder AppleShowAllFiles YES
```

### Show path bar

```shell
defaults write com.apple.finder ShowPathbar -bool true
```

### Show status bar

```shell
defaults write com.apple.finder ShowStatusBar -bool true
```

## CLI Usage

### Bulk Install Applications

Move Brewfile to main directory. Run command to install: 

    $ brew bundle install
    
### Youtube-dl

Youtube to mp3

    $ download-mp3 <video URL>


Youtube to mp4

    $ download-mp4 <video URL>


### File-Conversion

Single File Conversion

    $ ffmpeg -i LostInTranslation.mkv -vcodec copy -acodec copy LostInTranslation.mp4


Directory Loop Conversion 

    $ for i in *mkv; do ffmpeg -i $i -vcodec copy -acodec copy $i.mp4; done


### File-Scripts

Remove file with type

    $ for i in *.avi; do rm $i; done

Remove a substring

    $ for f in *.mp4; do mv "$f" "${f/.mkv/}"; done


### Reduce PDF Sizes with GhostScripts

    $ compresspdf "Input.pdf" "Output.pdf"


### TOC

    $ gh-md-toc README.md


### Network Ports

    $ netstat -an | less

## Acknowledgements

- [sb2nov](http://sourabhbajaj.com/mac-setup/) 
- [taniarascia](https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/)