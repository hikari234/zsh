# Created by newuser for 5.8
#
### +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
###                            Daily shortcut
### +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
alias cs=cowsay
alias d="g++ d.cc"
alias nf=neofetch
alias vi=nvim
alias ra=ranger
alias m="sudo make clean install"


alias n="nvim ~/.config/nvim/init.vim"
alias z="nvim ~/.zshrc"
alias s="source ~/.zshrc"

# Lazy c++ code
alias a="./a.out"

# For net work
alias pi="ping archlinux.org"
alias lsys="systemctl list-unit-files --type=service | grep enabled"

# output color 
alias ls="ls --color"
autoload -U colors && colors

# prompt display
eval "$(starship init zsh)"

### +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
###                            Environment ( Path )
### +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++

CLASSPATH=".:/usr/local/lib/antlr-4.9.2-complete.jar:$CLASSPATH"
alias antlr4='java -jar /usr/local/lib/antlr-4.9.2-complete.jar'
alias grun='java org.antlr.v4.gui.TestRig'



### +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
###                            Shell Function
### +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++

net ()
{
    sudo  ip link set wlo1 up
    sudo  wpa_supplicant -B -i wlo1 -c /etc/wpa_supplicant/wpa_supplicant.conf
    sudo  dhcpcd
}

g ()
{
    g++ $1
    ./a.out
}

c ()
{
    cp ~/algo/draft/sample.cc $1.cc
    nvim $1.cc
}
