# Snack Money Homebrew Tap

Official Homebrew tap for [Snack Money CLI](https://github.com/snack-money/snackmoney-cli) tools.

## What is this?

This is a [Homebrew tap](https://docs.brew.sh/Taps) that provides formulae for installing Snack Money's command-line tools on macOS and Linux.

## Installation

### Install Snack Money CLI

```bash
brew tap snack-money/tap
brew install snackmoney
```

Or install in one command:

```bash
brew install snack-money/tap/snackmoney
```

## Updating

To update to the latest version:

```bash
brew update
brew upgrade snackmoney
```

## Uninstall

```bash
brew uninstall snackmoney
brew untap snack-money/tap
```

## How It Works

This tap is automatically updated by GitHub Actions whenever a new version of the snackmoney CLI is released. The formulae are synced with the npm registry to ensure you always have access to the latest stable releases.

## Support

- **CLI Issues:** https://github.com/snack-money/snackmoney-cli/issues

## License

MIT
