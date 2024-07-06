{
  description = "Simple way to manage your home dir";

  outputs = inputs @ {...}: {
    nixosModules = rec {
      simple-manager = import ./module.nix inputs;
      default = simple-manager;
    };
  };

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };
}
