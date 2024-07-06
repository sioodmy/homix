# Homix

Simplest way to manage symlinks from the nix store to your home directory

## Why?

home-manager breaks stuff constantly, it's unreliable.

## About

My main focus is helping you manage your home directory, not to provide poorly written parsers
for each and every configuration file.

If it's possible to wrap your configs with wrapper-manager, then do it,

## Usage

That's it. Nothing less, nothing more.

```nix
homix.".config/git/config".source = ./git-config;
# It also works with directories
homix.".config/nvim".source = ./nvim-config;

homix.".config/anything".text = ''
  Yeah, you can also do that
'';
```
