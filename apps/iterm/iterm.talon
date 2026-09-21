os: mac
app: iterm2
# MT: inert on Linux (this file is os: mac), kept only so the header survives
# if I ever use iTerm again. "iterm" is not a declared app id, so it matches
# nothing under Talon 1.0; only "iterm2" above is real.
app: iterm
-

tag(): terminal
# todo: filemanager support - temporarily piggybacking off of terminal.talon
#tag(): user.file_manager
tag(): user.generic_unix_shell
tag(): user.git
tag(): user.kubectl
tag(): user.tabs
tag(): user.readline
