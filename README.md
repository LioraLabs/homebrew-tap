# Liora Labs Homebrew tap

```sh
brew install lioralabs/tap/cliban
```

[cliban](https://github.com/LioraLabs/cliban) — self-hosted, agent-first kanban
for the terminal. The formula installs both binaries: `cliban` (CLI + TUI) and
`cliband` (the SSH daemon for shared boards).

Bottles are the prebuilt release archives, so nothing compiles at install time.
macOS and Linux, Intel and ARM.

## Refreshing the formula for a new release

`Formula/cliban.rb` pins a version and four checksums, all of which come from
the release's `SHA256SUMS`. To bump it, regenerate rather than hand-editing:

```sh
./gen_formula.py v0.2.1 > Formula/cliban.rb
git commit -am "cliban 0.2.1" && git push
```

Then verify against a real install:

```sh
brew update && brew reinstall cliban && cliban --version
```
