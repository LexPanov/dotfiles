# Dotfiles

I don't want to waste time setting up my machines, so I spent years maintaining dotfiles.

[Dotfiles are meant to be forked,](https://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked) but mine aren't. These scripts install many things you won't ever use. Feel free to look around and copy some of my script to fit your needs.

## Chezmoi

The latest version of my dotfiles are managed with [Chezmoi](https://chezmoi.io).

## Usage

```shell
ASK=1 sh -c "$(curl -fsSL https://raw.githubusercontent.com/lexpanov/dotfiles/master/remote_install.sh) -x encrypted -v"
```

First installation will ask for your name so you can customize a bit, and it will skip the encryped files, since you have to retrieve the GPG private key manually later. Removing `ASK=1` will use my names for the machine.

After the first installation you can always change the variables via `ASK=1 chezmoi init` or run `chezmoi edit-config`

To change the data or script, `chezmoi cd`, edit them, then run `chezmoi apply`.

## Features

```shell
$ make
help                           Print command list
dotfiles                       Update dotfiles
apply                          Run chezmoi apply
macos                          Run macos script
```
