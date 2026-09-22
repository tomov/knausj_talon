# MT's custom Talon config

Everything I write lives in this directory. Nothing else should.

| File | Context | What it is |
| --- | --- | --- |
| `mom.talon` | global | Coding vocabulary, bazel/drivelog commands, `speech.timeout` |
| `terminal.talon` | `app: gnome_terminal` | ~150 shell commands (bazel, aws, docker, conda, ssh) |
| `git.talon` | global | 95 git commands. Global on purpose -- see the header |
| `vim.talon` | `app: vim` (`win.title:/VIM/`) | vim ex-commands; matches vim running inside a terminal |
| `cursor.talon` | `app: cursor` | Cursor keybinds |
| `sublime.talon` | `app: sublime` | Sublime keybinds |
| `jetbrains.talon` | `app: jetbrains` | PyCharm/CLion keybinds + C++ snippets |
| `app_ids.py` | — | Declares the `cursor`, `sublime`, `jetbrains` app ids |
| `mouse_drag_fix.py` | global | Makes pop / `end drag` actually end a drag |
| `secret.talon` | global | **Gitignored.** Credentials, hosts, personal data. Never commit. |

## Re-porting after a community upgrade

The plan is deliberately low-tech: nothing here is upstreamed, and a future
upgrade may mean porting it over again. That's fine. To make that cheap, every
edit I have made *outside* this directory carries an `MT:` comment.

1. **Read `BREAKING_CHANGES.txt` at the repo root first.** It is sorted newest
   first and lists exactly what upstream broke on purpose. Skipping it is how
   the `10: "vim "` warning below survived the 1.0 port unnoticed.

2. See everything that diverges from upstream:

   ```sh
   git fetch upstream && git diff upstream/main -- .
   ```

3. Read the rationale for each divergence outside `custom/`:

   ```sh
   git grep -n "MT:" -- ':!custom/'
   ```

4. Re-apply those by hand on top of the new upstream, then confirm nothing is
   unaccounted for — this must print nothing:

   ```sh
   for f in $(git diff --name-only upstream/main); do
     [ -f "$f" ] && ! grep -q "MT:" "$f" && echo "UNMARKED $f"
   done
   ```

### Catching a whole file that went missing

The `MT:` sweep above only finds files that still exist. It cannot find a file
of mine that upstream *moved or deleted*, because then there is nothing left to
grep -- that is exactly how `misc/git.talon` (all 95 git commands) was lost in
the 1.0 port and not noticed until `git push origin` stopped responding.

So also diff the old fork against the base it was forked from, and account for
every line of that list:

```sh
git diff --name-status master backup/pre-squash-tip
```

Keep a `backup/pre-<upgrade>` tag before every upgrade so this stays possible.

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
- **Ending a drag was broken by a button-numbering mismatch.** Upstream's
  `mouse_drag_end` releases whatever `ctrl.mouse_buttons_down()` reports, but
  feeds those platform-native codes to `actions.mouse_release()`, which expects
  Talon's numbering. On Linux they disagree, so it releases the wrong button and
  *still* returns True -- which makes pop swallow the noise without ending the
  drag or clicking. See `mouse_drag_fix.py`; set `MT_DRAG_DEBUG = True` there to
  log presses and releases.
- **Spoken forms must be words, not digits.** `10: "vim "` made Talon log
  `skipped unknown tokens: ['0', '1']` on every single phrase. Spell it (`ten`).
- **`~/.talon/user/engines.py` is obsolete** (renamed to
  `engines.py.disabled-talon-1.0`). It loaded a w2l conformer model whose
  `acoustic.bin` no longer ships; Talon 1.0 supplies its own engine.

## Deletions (these cannot carry an `MT:` marker)

- `apps/jetbrains/jetbrains.py`, `apps/jetbrains/jetbrains.talon` — removed; the
  upstream command set collided with mine. Because `jetbrains.py` is where
  upstream declared the `jetbrains` app id, `app_ids.py` re-declares it.

## Deprecated commands I still say out of habit

The log says I used these 19 times. Both still work, but they warn:

| I say | Say instead |
| --- | --- |
| `talon sleep` | `go to sleep` |
| `talon wake` | `wake up` |

Find any others with:

```sh
grep -oE 'The "[^"]+" command is deprecated.*Instead, say: "[^"]+"' ~/.talon/talon.log \
  | sort | uniq -c | sort -rn
```

## Open question

In the old fork I had disabled upstream's `text/generic_editor.talon` wholesale
(renamed to `.NOtalon`): `find it`, `next one`, `go word left`, etc. Those
commands now live in `core/edit/edit.talon`, which is core and cannot simply be
switched off, so they are currently **active again**. Nothing reports an
ambiguity, so I have left them on. If they start fighting my own commands,
override the specific ones rather than disabling the file.

## Upstream tags I intentionally leave off

`apps/gnome_terminal/gnome_terminal.talon` does **not** enable `user.git` or
`user.kubectl`. Upstream's composable `git {user.git_command}` grammar is nicer,
but it makes my own `git ...` commands in `git.talon` ambiguous, and I have
years of muscle memory in those. Re-enable both tags if I ever drop my set.
