# Rex Personal Configuration

Personal config for testing, tweaking, and exploring
[Rex beta](https://www.superlogical.com/rex/docs/installation).

![Rex preview](assets/rex-preview.webp)

## Layout

```text
init.lua            # entry point, loads the modules under config/
config/keymaps.lua  # key bindings
```

## iOS Settings

### Interface

- `Toolbar layout` = `Left`
- `Toolbar behavior` = `Hidden`
- **Customize tabs**
    - `Show tab icons` = `0`
- `Pane style` = `Compact`
- `Pane header behavior` = `hidden`
- **Customize panes**
    - `Fill with program colors` = `Off`
    - `Highlight active panes edges` = `Disable`
    - `Fade inactive panes` = `Content`
    - `Fade panes for inactive windows` = `Disable`
    - `Autobalance splits` = `Disable`
    - `Focus follow mouse` = `Disable`
    - `Minimize floating windows` = `Bottom Right`
- `Sidebar text size` = `15pt`
- `Preserve width when resizing sidebar` = `Disable`
- `Show back and forward buttons` = `Disable`
- `Use trackpad gesture` = `Disable`
- `Animation` = `Off`

### Themes

[kasumi.nvim](https://github.com/ryanjayleyva/kasumi.nvim/blob/main/extras/ghostty/kasumi)

Import the kasumi theme into Rex.

## Keybindings

The prefix is `ctrl+a`. Chords are written `ctrl+a>key`.

| Area     | Binding                                    | Action                                    |
| -------- | ------------------------------------------ | ----------------------------------------- |
| Sessions | `s` `]` `[` `k` `b` `l`                    | new, next, previous, switch, back, recent |
| Sessions | `shift+r` `shift+q`                        | rename, close                             |
| Windows  | `shift+n` `shift+x` `f`                    | new, close, toggle fullscreen             |
| Tabs     | `t` `n` `p` `shift+m`                      | new, next, previous, move to new window   |
| Panes    | `shift+\` (`\|`) `-`                       | split right, split down                   |
| Panes    | `ctrl+a` `ctrl+a`                          | send a literal `ctrl+a` to the pane       |
| Panes    | `ctrl+a>h` `ctrl+a>j` `ctrl+a>k` `ctrl+a>l`| focus left, down, up, right (no prefix)   |
| Resize   | `ctrl+a>r`, then `h` `j` `k` `l`, `ctrl+q` | enter resize mode, resize, exit           |

The default client bindings `cmd+t`, `cmd+w`, `cmd+d`, `shift+cmd+d`, `cmd+k`,
and `cmd+n` are unbound.

## CLI Commands

Validate the configuration with the CLI

```bash
rex config check
```

Reload the configuration with the CLI

```bash
rex config reload
```

Thank you to Superlogical for the
[Rex](https://www.superlogical.com/rex/docs/installation) beta access.
