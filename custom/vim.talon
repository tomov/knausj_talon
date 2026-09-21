# MT: "vim" is declared in core/application_matches.py as win.title:/VIM/, so this
# matches vim running inside a terminal (vim sets the terminal title, and
# gnome-terminal propagates it). Commands here used to live in custom/terminal.talon
# and custom/mom.talon, where they either fired in the wrong places or collided.
app: vim
-

# Files
save: ":w\n"
vim save: ":w\n"
editor save: ":w\n"
quit: ":q\n"
vim quit: ":q\n"
editor quit: ":q\n"
save quit: ":wq\n"

# Options
set pasta: ":set paste\n"
set no pasta: ":set nopaste\n"
set number: ":set nu\n"
set no number: ":set nu!\n"
vertical split: ":vs "

# Search and replace
search: "/"
replace:
    insert(":%s///g")
    key(left)
    key(left)
    key(left)
replace underscores with dashes:
    insert(":s/_/-/g")
replace dashes with underscore:
    insert(":s/-/_/g")
convert dots to slashes:
    insert(":s/\./\//g")
convert slashes to dots:
    insert(":s/\//\./g")
