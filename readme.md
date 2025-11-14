# Shell Scripts

## What is this?

This repository contains my **zshrc** scripts and config.

## The scripts

The scripts are in `./scripts`. Their paths are not explicitly declared in an import file. The scripts are all loaded together at once by `./entry.sh` from `./scripts`.

## Setup

1. Place this repo as `~/dev/shell`
2. Update your `~/.zshrc` file to point to the repo:

```sh
# Load `zshrc` from our shell repo.
source ~/dev/shell/entry.sh
```
