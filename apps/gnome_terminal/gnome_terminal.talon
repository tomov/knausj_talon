app: gnome_terminal
-

# Set tags
tag(): terminal
tag(): user.tabs
tag(): user.generic_unix_shell
tag(): user.file_manager
# MT: upstream's git.talon and kubectl.talon are intentionally left inactive --
# I use my own git/kubectl commands in custom/terminal.talon, and enabling both
# makes "git ..." ambiguous. Re-enable these two if you ever drop the custom set.
#tag(): user.git
#tag(): user.kubectl
tag(): user.readline
