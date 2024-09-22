# ☕️ emojino

A simple emoji picker app for Linux. Built with [emoji-picker-element](https://github.com/nolanlawson/emoji-picker-element) and [Neutralino](https://neutralino.js.org/).

## Usage

Click an emoji to copy it to your clipboard.

## Install

This app is not packaged yet. Build it locally on any Linux system with `neu build`.
See the _Develop_ section below for details.

After running `neu build`, you can start `./dist/emojino/emojino-linux_x64`.
Create a custom keyboard shortcut like <kbd>Ctrl</kbd><kbd>Alt</kbd><kbd>E</kbd> to start Emojino from anywhere.

## Develop

- Install the [`neu` CLI](https://neutralino.js.org/docs/cli/neu-cli).
- Run `neu update` to download the Neutralino binaries.
- Run `setup.sh` to download other assets from CDN.
- Run `neu run` for local development with live reload.
- Or, run `neu build` to build an executable binary.

## Logo

The logo is the ☕️ from [Twemoji](https://emojipedia.org/twitter/twemoji-15.0.3/hot-beverage).

## License

[MIT](LICENSE)
