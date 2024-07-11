# Homix

Simplest way to manage symlinks from the nix store to your home directory. Written in under 100 lines of code.

## Why?

home-manager breaks stuff constantly, it's unreliable. 

## About

My main focus is helping you manage your home directory, not to provide poorly written parsers
for each and every configuration file.

If it's possible to wrap your configs with wrapper-manager, then do it,

## Usage

That's it. Nothing less, nothing more.

```nix
imports = [ inputs.homix.nixosModules.default ];

users.users.yourname = {
  ...
  homix = true;
};
homix.".config/git/config".source = ./git-config;
# It also works with directories
homix.".config/nvim".source = ./nvim-config;

homix.".config/anything".text = ''
  Yeah, you can also do that
'';
```

### What about multi-user support

Multi-user support could be useful for some users, but it overcomplicates stuff needlessly. I have never seen a single NixOS user using more than one user account.

### What about conflicts?

It overrides them. Simple as. 

