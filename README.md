# MoErgo Glove80 Custom Configuration for ZMK

This configuration uses a [custom ZMK firmware](https://github.com/darknao/zmk/tree/darknao/rgb-dts) that includes per layer / per key RGB underglow, based on @valdur [mod](https://github.com/moergo-sc/zmk/compare/main...valdur:zmk-glove80:valdur-stuff).

## Build

Install [Nix](https://nixos.org/download/), then run:

```sh
./build.sh
```

On Windows, install Nix inside WSL and run `build.bat`.

Firmware: `build/glove80.uf2`.
