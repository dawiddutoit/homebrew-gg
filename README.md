# gg Homebrew tap

Installs the prebuilt gg alpha binary from
[gg-releases](https://github.com/dawiddutoit/gg-releases/releases).

```sh
brew install dawiddutoit/gg/gg
brew update && brew upgrade dawiddutoit/gg/gg
```

The formula pins each platform archive by SHA-256 and installs only the `gg`
executable. Configuration and state live in your home directory and survive
upgrades. This tap supports Apple Silicon and Intel Macs, plus Linux arm64 and
x64 with glibc 2.35 or newer.
