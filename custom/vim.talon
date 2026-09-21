# MT: dropped the bogus "app: /.*/ and title: /vim/i" block -- "app:" takes a
# declared app id, not a regex. "vim" is declared in core/application_matches.py
# as win.title:/VIM/, which already covers vim running inside a terminal.
app: vim
-
save: ":w\n"
quit: ":q\n"
save quit: ":wq\n"
