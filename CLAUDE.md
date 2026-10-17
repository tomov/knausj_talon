# CLAUDE.md

This is a personal fork of the Talon community repo, used on two machines: Ubuntu
(Motional work machine) and Mac. Talon ignores `.md` files, so this file is inert.

## Branch structure

```
master                          upstream talonhub/community
└── shared_ubuntu_mac_2026      customizations identical on both platforms
    ├── ubuntu_on_top_of_shared_2026   Ubuntu + Motional-specific
    └── mac_on_top_of_shared_2026      Mac-specific
```

Each platform branch is the shared branch plus platform commits on top. The
platform branches never merge into each other or into shared.

## Where changes go

- Commands that behave the same on both platforms go on the **shared** branch, in
  the shared files (e.g. `custom/terminal.talon`, `custom/mom.talon`,
  `apps/cursor/cursor.talon`, `apps/sublime/sublime.talon`,
  `apps/jetbrains/jb_mom.talon`).
- Platform-specific commands go in the matching `*_ubuntu.talon` / `*_mac.talon`
  file on that platform's branch.
- Anything Motional-specific (AWS SSO, Simian, drivelogs, nuplan, av-stack, ...)
  goes **only** on the Ubuntu branch.
- Before adding a command, check the other files for the same spoken form; a
  duplicate across shared and platform files conflicts in Talon.
- When a change is ambiguous (shared vs. platform), ask.

## Workflow

1. Commit shared changes on `shared_ubuntu_mac_2026` (a `git worktree` keeps the
   live Talon directory from switching branches under Talon).
2. Commit platform changes on the platform branch.
3. Rebase **both** platform branches onto the updated shared branch.
4. Push shared normally; push the platform branches with `--force-with-lease`
   pinned to the expected old commit.
5. The other machine then needs `git fetch` + reset/rebase onto its updated
   remote branch, after preserving its local changes (see below).

## Never lose local changes

This directory is the live Talon config, often with uncommitted edits.

- Run `git status` before any checkout, rebase, reset, or stash, and look at
  every modified, staged, and untracked file.
- Carry local changes through rebases (commit, or stash and pop) and verify
  afterwards that they are all still present.
- When rebasing, incorporate local changes intelligently: sort them into
  shared vs. platform, and resolve conflicts by keeping both sides' intent.
- Never `git reset --hard`, `git checkout -- <file>`, `git clean`, or drop a stash
  without first confirming nothing would be lost.
- When in doubt, ask.

## Gotchas

- `/settings` is gitignored upstream, but `settings/additional_words.csv` is
  tracked on shared; changes to it need `git add -f`.
- `custom/secret.talon` is gitignored on the Ubuntu branch; never commit it.
- `sdot.log` is unrelated local noise; leave it untracked.
