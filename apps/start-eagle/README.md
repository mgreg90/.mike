start-eagle
==========

Start running the eagle app from from the UI (eagle_app) all the way through Conductor

- This script is written in applescript so it is only compatible with OSX.
- Currently only iTerm2 is supported. Support for HyperTerm is next.
- Requires initial setup

## Requirements
```
OSX
ngrok
iterm2
```

## Installation
```shell
# clone this directory
$ git clone <blahblahblah>

# Set env var
$ CARECLOUD_DIR=<directory-with-your-projects>

# run the install script
$ cd apps/start-eagle && sh install.sh
```

## TODO
1. Let the script set the ports for all apps so user doesn't have to.
2. Options for pulling latest commits and freshly pulling dependencies.
3. Support hyperterm and tmux