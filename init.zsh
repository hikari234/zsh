# 
# My Zsh Config
#
### +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
###                            Daily shortcut
### +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
alias cs=cowsay
alias nf=neofetch
alias vi=nvim
alias ra=ranger

alias a="./a.out"
alias m="sudo make clean install"
alias pi="ping archlinux.org"
alias shut="sudo shutdown -h 0"
alias lsys="systemctl list-unit-files --type=service | grep enabled"

alias n="nvim ~/.config/nvim/init.vim"
alias z="nvim ~/.config/zsh/init.zsh"
alias s="source ~/.config/zsh/init.zsh"

# output color 
alias ls="ls --color"
autoload -U colors && colors

# prompt display
# eval "$(starship init zsh)"

### +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
###                          Environment ( Path )
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
    if [ $? -eq 0 ]; then
        echo "Compile Successfully!"
    else
        echo "Compilation Error"
    fi
    ./a.out
    if [ $? -eq 0 ]; then
        echo "Running Successfully!"
    else
        echo "Runtime Error"
    fi
}

v ()
{
    if [ -f "$1" ]; then
        echo "Opening $1..."
        nvim $1
    else
        echo "Creating new file...\nFile name: $1"
        cp ~/algo/draft/.sample.cc $1.cc
        nvim $1.cc
    fi
}
d ()
{
    g++ $1.cc
    echo "Running..."
    ./a.out
}
