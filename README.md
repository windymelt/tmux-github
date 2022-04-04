# Tmux GitHub Status

Enables displaying GitHub Status in tmux status-right

## Installation

In order to read GitHub Status, this plugin depends on `curl` and `jq`.

### Installation with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) (recommended)

Add plugin to the list of TPM plugins in `.tmux.conf`:

```tmux
set -g @plugin 'windymelt/tmux-github'
```

Hit `<prefix> + I` to fetch the plugin and source it.

If format strings are added to `status-right`, they should now be visible.

### Manual Installation

Clone the repo:

```shell
git clone https://github.com/windymelt/tmux-github ~/clone/path
```

Add this line to the bottom of `.tmux.conf`:

```tmux
run-shell ~/clone/path/gh-status.tmux
```

From the terminal, reload TMUX environment:

```shell
tmux source-file ~/.tmux.conf
```

If format strings are added to `status-right`, they should now be visible.

## Usage

Add any of the supported format strings (see below) to the `status-right` tmux option in `.tmux.conf`. Example:

```tmux
set -g status-right '#{gh_status_description} | %a %h-%d %H:%M '
```

### Supported Format Strings

 - `#{gh_status_description}` - will show GitHub Status description message. e.g. `All Systems Operational`, `Partial System Outage`, etc.

### License

[MIT](LICENSE.md)