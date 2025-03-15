# path to ohmyzsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="arrow"

# better history settings
HISTFILE=~/.zsh_history
HISTSIZE=99999
SAVEHIST=99999
setopt APPEND_HISTORY       # append history instead of overwriting
setopt SHARE_HISTORY        # share history across terminals
setopt INC_APPEND_HISTORY   # save each command as it's typed
setopt HIST_IGNORE_ALL_DUPS # ignore duplicate entries
setopt HIST_REDUCE_BLANKS   # remove unnecessary whitespace

# plugins
plugins=(git zsh-vi-mode zsh-autosuggestions zsh-syntax-highlighting fzf)

# run ohmyzsh script
source $ZSH/oh-my-zsh.sh

# aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias vi='nvim'
alias vim='nvim'
alias xc='xclip -selection clipboard'
alias xv='xclip -selection clipboard -o'
alias ls='ls --color=auto'
alias ll='ls -lah'
alias la='ls -A'
alias l='ls -CF'
alias t='tree'
alias cc='clear'
