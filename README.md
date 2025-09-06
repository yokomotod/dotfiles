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
sudo nixos-rebuild switch --flake .#nixos
```
