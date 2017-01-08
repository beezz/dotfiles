
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="minimal"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git pip python virtualenv vi-mode docker zsh-completions vagrant)


# Load commpinit function
autoload -U compinit && compinit

# Load oh-my-zsh
source $ZSH/oh-my-zsh.sh


# Make sure vim is set as a editor
export EDITOR=vim

# Less is more
export PAGER=less


# Git part of prompt customization
ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}[%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} ● %{$reset_color%}] "
ZSH_THEME_GIT_PROMPT_CLEAN="%{$reset_color%}] "


# Virtualenv part of promtp customuzation
ZSH_THEME_VIRTUALENV_PREFIX="%{$reset_color%}[%{$fg[blue]%}"
ZSH_THEME_VIRTUALENV_SUFFIX="%{$reset_color%}] "

# Two line prompt
PROMPT=$'%~ $(virtualenv_prompt_info)$(vcs_status)\n»%b '


# load the junegunn's fuzzy command line finder configuration
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# add user's local bin dir to the PATH
export PATH=~/.local/bin:${PATH}

# History settings
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY               # Don't execute immediately upon history expansion.
