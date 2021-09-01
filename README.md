# .dotfiles

Personal configuration for macOS

## Install 

```
// Command Line Tools for Xcode
sudo xcode-select --install

// Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

git clone git@github.com:patricklinpl/.dotfiles.git && cd dotfiles && ./install
```

### Configure Git per Repo

```
git config --local user.email "15319206+patricklinpl@users.noreply.github.com"
```

### Brew Dump

```
brew bundle dump --describe 
```

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

## CLI Usage
    
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
- [dotbot](https://github.com/anishathalye/dotbot)
- [~/.dotfiles in 100 Seconds](https://www.youtube.com/watch?v=r_MpUP6aKiQ)
- [Dotfiles from Start to Finish-ish](https://www.udemy.com/course/dotfiles-from-start-to-finish-ish/?referralCode=445BE0B541C48FE85276)
