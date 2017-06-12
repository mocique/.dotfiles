# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob
bindkey -v
bindkey "^R" history-incremental-search-backward
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#
export PATH=/usr/local/bin:$PATH

# brew install
export PATH=/usr/local/Cellar/p7zip/16.02/bin/:$PATH
export PATH=/usr/local/Cellar/rsync/3.1.2/bin/:$PATH
export PATH=/usr/local/Cellar/screen/4.5.1/bin/:$PATH
## autojump
export PATH=/usr/local/Cellar/autojump/22.5.1/bin:$PATH
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
export PATH="/usr/local/Cellar/grep/3.0/bin/:$PATH"


# c++
alias gcc='gcc-4.8'
alias cc='gcc-4.8'
alias g++='g++-4.8'
alias c++='c++-4.8'

# python
# added by Anaconda2 4.3.0 installer
export PATH="$HOME/anaconda2/bin:$PATH"
## self modules
export PYTHONPATH=$HOME/tensorflow/models/:$PYTHONPATH
export PYTHONPATH=$HOME/tensorflow/models/slim/:$PYTHONPATH

# miscellaneous
## self defined command
export PATH=$HOME/local/bin/:$PATH
## dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
## copy in terminal
alias cpc="fc -ln -1 | pbcopy "
alias cpwd="pwd-manager r |cut -f 1 -d ' ' |awk 'NR==3{print $1}' |pbcopy"
## set terminal vi mode
set -o vi
## set terminal type
TERM="screen-256color"
# ls
alias ls='ls -G'
export CLICOLOR=1
