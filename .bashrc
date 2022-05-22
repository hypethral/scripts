
export PATH=$HOME/.local/bin:$PATH
force_color_prompt=yes

fortune | bash ~/.center.sh | lolcat
PS1='\[\e[1;31m\][\[\e[m\]\[\e[1;31m\]\u\[\e[m\]\[\e[1;31m\]\e[1;97m\] \W\[\e[m\]\[\e[1;31m\]]$ \[\e[m\]'
 
[ -r /usr/share/bash-completion/bash_completion       ] && . /usr/share/bash-completion/bash_completion   

alias ls='ls --color=auto'
alias grep='grep --color=auto'
#alias neofetch='neofetch --kitty /home/dark/my\ files/Pictures/new\ wallpapers/wallhaven-j51qpy.png'
