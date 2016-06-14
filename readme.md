# dark-mode

> Toggle the macOS [Dark Mode](http://www.macworld.co.uk/how-to/mac-software/turn-on-yosemites-dark-mode-on-mac-3534690/) from the command-line

Requires macOS 10.10 or later.

**Ensure `System Preferences` → `General` → `Use dark menu bar and Dock` is unchecked.**


![](screenshot.gif)


## Install

###### [Homebrew](http://brew.sh)

```
$ brew install dark-mode
```

###### [npm](https://github.com/sindresorhus/node-dark-mode#cli)

```
$ npm install --global dark-mode
```

###### Manually

[Download](https://github.com/sindresorhus/dark-mode/releases/latest) the binary and put it in `/usr/local/bin`.


## Usage

```sh
# toggle between dark and light mode
dark-mode

# force a specific mode
dark-mode --mode Dark
dark-mode --mode Light

# get the current mode
dark-mode --mode
> Light
```


## Build

```
$ ./build
```


## Related

- [node-dark-mode](https://github.com/sindresorhus/node-dark-mode) - Node.js wrapper


## License

MIT © [Sindre Sorhus](http://sindresorhus.com)
