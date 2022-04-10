# 
# My Zsh Config
#
### +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
###                            Daily shortcut ( alias )
### +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
alias cs=cowsay
alias vi=nvim
alias lg=lazygit
alias ra='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'


alias a="./a.out"
alias m="sudo make clean install"
alias pi="ping archlinux.org"
alias shut="sudo shutdown -h 0"
alias lsys="systemctl list-unit-files --type=service | grep enabled"
alias src="scrot -s ~/Pictures/screenshot.jepg"

alias n="nvim ~/.config/nvim/init.vim"
alias z="nvim ~/.config/zsh/init.zsh"
alias s="source ~/.config/zsh/init.zsh"
alias rars="java -jar -Dsun.java2d.uiScale=2 ~/riscv/rars.jar &"

# output color 
alias ls="ls --color"
autoload -U colors && colors

# git completion library
autoload -Uz compinit && compinit

### +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
###                          Environment ( Path )
### +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++

export RANGER_LOAD_DEFAULT_RC=FALSE
export BROWSER=firefox
CLASSPATH=".:/usr/local/lib/antlr-4.9.2-complete.jar:$CLASSPATH"
alias antlr4='java -jar /usr/local/lib/antlr-4.9.2-complete.jar'
alias grun='java org.antlr.v4.gui.TestRig'


