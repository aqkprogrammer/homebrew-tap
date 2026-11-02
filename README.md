# CluePilot Homebrew tap

Install [CluePilot](https://cluepilot-phi.vercel.app/), a private interview preparation copilot for macOS, with Homebrew.

```bash
brew install aqkprogrammer/tap/cluepilot
```

Requires macOS 14 or later, on Apple silicon or Intel. The same universal build works on both.

CluePilot is not notarized by Apple yet, so macOS may report it as damaged. Homebrew prints the one-line fix after installing:

```bash
xattr -dr com.apple.quarantine /Applications/CluePilot.app
```

## Update

```bash
brew update
brew upgrade --cask cluepilot
```

## Uninstall

```bash
brew uninstall --cask cluepilot
```

To also delete your conversations, documents and settings, add `--zap`. API keys are kept in your macOS Keychain and are not removed.

## Downloads

Every version is on the [releases page](https://github.com/aqkprogrammer/homebrew-tap/releases).

## Support

Questions: thefullstackbuilder@gmail.com
