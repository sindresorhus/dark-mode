# dark-mode

> Toggle the [Dark Mode](http://www.macworld.co.uk/how-to/mac-software/turn-on-yosemites-dark-mode-on-mac-3534690/) in OS X 10.10 from the command-line


![](screenshot.gif)


## Install

### [Homebrew](http://brew.sh)

```
$ brew install dark-mode
```

### [npm](https://github.com/sindresorhus/node-dark-mode#cli)

```
$ npm install --global dark-mode
```

### Manually

[Download the binary](https://github.com/sindresorhus/dark-mode/releases/latest) and put it in `/usr/local/bin`.


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


## Related

- [`node-dark-mode`](https://github.com/sindresorhus/node-dark-mode) - Node wrapper for `dark-mode`.


## License

MIT © [Sindre Sorhus](http://sindresorhus.com)
