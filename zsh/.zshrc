# Auto Complete from file
local knownhosts
knownhosts=( ${${${${(f)"$(<$HOME/mycustomeHOSTfile)"}:#[0-9]*}%%\ *}%%,*} )
zstyle ':completion:*:(ssh|scp|sftp):*' hosts $knownhosts
