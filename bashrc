export PATH=$HOME/.local/bin:$PATH
force_color_prompt=yes
fortune | bash ~/.center.sh | lolcat
export PS1="\[\e[1;37m\]\u\[\e[m\]\[\e[1;37m\]@\[\e[m\]\[\e[1;35m\]\h\[\e[m\] \[\e[1;37m\]\w \\$ \[\e[m\]"
#PS1='\[\e[1;97m\]\u\[\e[m\]\[\e[1;31m\]\e[1;35m\] \W\[\e[m\]\] $ '
[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias i3config='vim ~/.config/i3/config'
alias polyconfig='vim ~/.config/polybar/config.ini'
alias bton='~/.scripts/./bton'
alias btoff='~/.scripts/./btoff'
alias bt='bluetoothctl'
complete -cf doas
alias update='doas pacman -Syyu'
alias virton='systemctl start libvirtd'
alias buildj='javac -d . *.java'
alias r='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias trim='doas fstrim -A'
alias jarbuild='mvn clean compile assembly:single'
alias fjournal='journalctl -f -b 0 | ccze'
