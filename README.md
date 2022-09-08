# Dotfiles

I don't want to waste time setting up my machines, so I spent years maintaining dotfiles.

[Dotfiles are meant to be forked,](https://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked) but mine aren't. These scripts install many things you won't ever use. Feel free to look around and copy some of my script to fit your needs.

## Chezmoi

The latest version of my dotfiles are managed with [Chezmoi](https://chezmoi.io).

### TODOs

- [x] Fix Fish shell broken in clean install
- [x] Add Homebrew install script (run-once)
- [x] Update this readme
- [x] Cleanup dotbot
- [ ] Linux / Github Codespaces install scripts
  - [ ] `git-delta`, `exa` not installed
  - [ ] `Fish` crashed
- [ ] Documentation website
- [ ] Instructions to import GPG keys
- [ ] 1password integration

## Usage

```shell
ASK=1 sh -c "$(curl -fsSL https://raw.githubusercontent.com/lexpanov/dotfiles/master/remote_install.sh) -x encrypted -v"
```

First installation will ask for your name so you can customize a bit, and it will skip the encryped files, since you have to retrieve the GPG private key manually later. Removing `ASK=1` will use my names for the machine.

After the first installation you can always change the variables via `ASK=1 chezmoi init` or run `chezmoi edit-config`

To change the data or script, `chezmoi cd`, edit them, then run `chezmoi apply`.

## Manual tasks (One-time per machine)

- macOS
  - Run Setapp installer manually after the `brew` script is run.
  - Login to App Store before running (If not `mas` will skip installation and open the App Store for you)
  - Preferences -> Change input source switch to CMD+Space, and Spotlight search to Option+Space
  - Run `mackup restore` once after Syncthing is installed, logged-in, and `~/Sync/Mackup` is synced.
  - Connect to Zerotier private network to mount NAS
  - Setup Arq for backup
  - Disable Boom 3D keyboard shortcuts
  - Disable Timing keyboard shortcuts

## Features

```shell
$ make
help                           Print command list
dotfiles                       Update dotfiles
apply                          Run chezmoi apply
macos                          Run macos script
```

### Installed Applications & Tools

- macOS
  - [Homebrew](https://brew.sh)
  - [Homebrew Cask](https://github.com/Homebrew/homebrew-cask)
  - [Mas](https://github.com/mas-cli/mas)
  - [Chezmoi](https://chezmoi.io)
  - [zsh](https://zsh.org) with [zsh4humans](https://github.com/romkatv/zsh4humans) + [Powerlevel10k](https://github.com/romkatv/powerlevel10k) theme
  - [fish](https://fishshell.com) with [fisher](https://github.com/jorgebucaran/fisher) + [Tide](https://github.com/IlanCosman/tide) theme
  - [asdf](https://asdf-vm.com) with Ruby & Node.js
  - [tmux](https://github.com/tmux/tmux/)
  - [macOS defaults](https://mths.be/macos)
  - etc.
- Linux
  - Dotfiles only

