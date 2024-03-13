export PATH=$HOME/.local/bin:$PATH
force_color_prompt=yes
alias Fortune='fortune | bash ~/.center.sh | lolcat'
alias Bonsai='cbonsai --i -l | lolcat'
# echo "「𝙥𝙡𝙚𝙖𝙨𝙚, 𝙩𝙚𝙡𝙡 𝙢𝙚 𝙩𝙝𝙚 𝙩𝙧𝙪𝙩𝙝. 𝙖𝙢 𝙄...𝙚𝙫𝙞𝙡? 」" | bash ~/.center.sh | lolcat
Fortune
export PS1="\[\e[1;37m\]\u\[\e[m\]\[\e[1;90m\]@\[\e[m\]\[\e[1;37m\]\h\[\e[m\] \[\e[1;37m\]\w \\$ \[\e[m\]"
#PS1='\[\e[1;97m\]\u\[\e[m\]\[\e[1;31m\]\e[1;35m\] \W\[\e[m\]\] $ '
[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias i3config='vim ~/.config/i3/config'
alias polyconfig='vim ~/.config/polybar/config.ini'
alias bton='~/.scripts/./bton'
alias btoff='~/.scripts/./btoff'
alias Win='~/.scripts/./windows'
alias bt='bluetoothctl'
complete -cf doas
alias update='doas pacman -Syyu'
alias virton='systemctl start libvirtd'
alias buildj='javac -d . *.java'
alias r='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias trim='doas fstrim -A'
alias jarbuild='mvn clean compile assembly:single'
alias fjournal='journalctl -f -b 0 | ccze'
alias t='~/.scripts/./twitch'
alias wscan='nmcli dev wifi list --rescan yes'
alias nvidia='cat /sys/bus/pci/devices/0000:01:00.0/power/runtime_status'
alias firewall='systemctl restart --now nftables.service'
alias firewallDisable='doas nft flush ruleset'
alias j='tgpt --provider llama2'
alias bye='shutdown now'
alias ProblemCuda='nvidia-modprobe'
alias Holes='doas netstat -tupln'
alias Hibernate='systemctl hibernate'
alias hyperconfig='vim ~/.config/hypr/hyprland.conf'
alias PublicIP='curl ifconfig.me && echo ""'
alias TorChrome='chromium --proxy-server="socks5://127.0.0.1:9050"'
alias Install='doas pacman -S'
