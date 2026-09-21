# MT's custom Talon config

Everything I write lives in this directory. Nothing else should.

| File | Context | What it is |
| --- | --- | --- |
| `mom.talon` | global | Coding vocabulary, bazel/drivelog commands, `speech.timeout` |
| `terminal.talon` | `app: gnome_terminal` | ~150 shell commands (git, bazel, aws, docker, conda, ssh) |
| `vim.talon` | `app: vim` (`win.title:/VIM/`) | vim ex-commands; matches vim running inside a terminal |
| `cursor.talon` | `app: cursor` | Cursor keybinds |
| `sublime.talon` | `app: sublime` | Sublime keybinds |
| `jetbrains.talon` | `app: jetbrains` | PyCharm/CLion keybinds + C++ snippets |
| `app_ids.py` | — | Declares the `cursor`, `sublime`, `jetbrains` app ids |
| `secret.talon` | global | **Gitignored.** Credentials, hosts, personal data. Never commit. |

## Re-porting after a community upgrade

The plan is deliberately low-tech: nothing here is upstreamed, and a future
upgrade may mean porting it over again. That's fine. To make that cheap, every
edit I have made *outside* this directory carries an `MT:` comment.

1. See everything that diverges from upstream:

   ```sh
   git fetch upstream && git diff upstream/main -- .
   ```

2. Read the rationale for each divergence outside `custom/`:

   ```sh
   git grep -n "MT:" -- ':!custom/'
   ```

3. Re-apply those by hand on top of the new upstream, then confirm nothing is
   unaccounted for — this must print nothing:

   ```sh
   for f in $(git diff --name-only upstream/main); do
     [ -f "$f" ] && ! grep -q "MT:" "$f" && echo "UNMARKED $f"
   done
   ```

## Things that bit me on the 0.4.0 -> 1.0.0 upgrade

Check these first when commands go quiet after an upgrade.

- **`app:` takes a *declared* app id, not an app name or a regex.** Talon 0.4
  loosely matched `app.name`; 1.0 does not, and an undeclared id produces **no
  warning** — the whole file just silently stops matching. This killed
  `custom/terminal.talon` (`app: terminal`), `custom/vim.talon`
  (`app: /.*/ and title: /vim/i`), and all three editor files at once. Declare
  ids in `app_ids.py` or find them with
  `git grep -nE "^\s*(mod\.)?apps\."`.
- **A command body that is not quoted is parsed as TalonScript.**
  `mongo shell: mongosh` fails to parse; `mongo shell: "mongosh"` is correct.
- **Pop-to-click needs `user.mouse_enable_pop_click = 2`** (see `settings.talon`).
  Pre-1.0 it fired whenever an eye tracker was merely *attached*; 1.0 requires
  eye tracking to be actively *enabled*.
- **`core.autocrlf` must be `false`** and `.gitattributes` pins `eol=lf`. The old
  fork committed CRLF, which made every upstream diff look like a whole-file
  rewrite and hid the real changes.
- **`settings/*.csv` vs `.talon-list`.** Talon's migration helper rewrites
  tracked `.talon-list` files from legacy CSVs on startup; it silently dropped
  five upstream entries from `website.talon-list`. `abbreviations.csv`,
  `file_extensions.csv` and `words_to_replace.csv` are still live CSVs.
- **`~/.talon/user/engines.py` is obsolete** (renamed to
  `engines.py.disabled-talon-1.0`). It loaded a w2l conformer model whose
  `acoustic.bin` no longer ships; Talon 1.0 supplies its own engine.

## Deletions (these cannot carry an `MT:` marker)

- `apps/jetbrains/jetbrains.py`, `apps/jetbrains/jetbrains.talon` — removed; the
  upstream command set collided with mine. Because `jetbrains.py` is where
  upstream declared the `jetbrains` app id, `app_ids.py` re-declares it.

## Upstream tags I intentionally leave off

`apps/gnome_terminal/gnome_terminal.talon` does **not** enable `user.git` or
`user.kubectl`. Upstream's composable `git {user.git_command}` grammar is nicer,
but it makes my own `git ...` commands in `terminal.talon` ambiguous, and I have
years of muscle memory in those. Re-enable both tags if I ever drop my set.
