# dotfiles

## Git

```
.config/
└── git
    ├── config
    └── ignore
```

## NixOS

```
configuration.nix
flake.lock
flake.nix
home.nix
```

apply:

```console
nixos-rebuild dry-build --flake .#nixos
sudo nixos-rebuild switch --flake .#nixos
```
