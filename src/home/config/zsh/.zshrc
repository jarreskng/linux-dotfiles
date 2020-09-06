#-----------------------------------------------------------------------
#                         navigation
#-----------------------------------------------------------------------

setopt AUTO_CD
setopt CHASE_LINKS
setopt EXTENDED_GLOB 
setopt GLOB_DOTS 

#-----------------------------------------------------------------------
#                         history
#-----------------------------------------------------------------------

HISTFILE="${XDG_DATA_HOME}/zsh/zhistory"
HISTSIZE=8192
SAVEHIST=8192 

setopt EXTENDED_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_SAVE_NO_DUPS
setopt HIST_REDUCE_BLANKS

#-----------------------------------------------------------------------
#                         completion
#-----------------------------------------------------------------------

autoload -U compinit
compinit -d "${XDG_DATA_HOME}/zsh/zcompdump"

zstyle ':completion:*:*:*:*:*'	    menu select
zstyle ':completion:*:*:default'    force-list always
zstyle ':completion:*'              rehash true
zstyle ':completion::complete:*'    use-cache 1
zstyle ':completion::complete:*'    gain-privileges 1

zstyle ':completion:*:processes'    sort false
zstyle ':completion:*:processes'    command 'ps -au $USER'
zstyle ':completion:*:processes'    insert-ids menu select

#-----------------------------------------------------------------------
#                         prompt
#-----------------------------------------------------------------------

autoload -U promptinit
promptinit
prompt redhat

#-----------------------------------------------------------------------
#                         bindings
#-----------------------------------------------------------------------

case $TERM in
    linux)
	bindkey  "^[[1~"	beginning-of-line
	bindkey  "^[[4~"	end-of-line
	bindkey  "^[[2~"	overwrite-mode
	bindkey  "^[[3~"	delete-char
	bindkey  "^[[A"		up-line-or-history
	bindkey  "^[[B"		down-line-or-history
	bindkey  "^[[D"		backward-char
	bindkey  "^[[C"		forward-char
	bindkey  "^[[5~"	beginning-of-buffer-or-history
	bindkey  "^[[6~"	end-of-buffer-or-history 
    ;;
    xterm-termite)
	bindkey  "^[[H"		beginning-of-line
	bindkey  "^[[F"		end-of-line
	bindkey  "^[[2~"	overwrite-mode
	bindkey  "^[[3~"	delete-char
	bindkey  "^[[A"		up-line-or-history
	bindkey  "^[[B"		down-line-or-history
	bindkey  "^[[D"		backward-char
	bindkey  "^[[C"		forward-char
	bindkey  "^[[5~"	beginning-of-buffer-or-history
	bindkey  "^[[6~"	end-of-buffer-or-history 
    ;;
esac

#-----------------------------------------------------------------------
#                         aliases
#-----------------------------------------------------------------------

alias emacs="emacsclient"
alias em="emacsclient"

alias cp="nocorrect cp --verbose --preserve=all"
alias mv="nocorrect mv --verbose --interactive"
alias rm="nocorrect rm --verbose --interactive"

alias ls="ls --color --human-readable --group-directories-first"
alias df="df --human-readable --exclude-type=tmpfs"
alias du="du --human-readable --total --max-depth=1 | sort --human-numeric-sort"

