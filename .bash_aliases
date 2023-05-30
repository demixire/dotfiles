
alias c='clear'

alias l='ls -alF --color=none'
alias ls='ls --color=none'

alias dnfup='sudo dnf upgrade --refresh -y'

PS1='\[\e[0;1m\]\w \[\e[0;1m\]$ \[\e[0m\]'

alias emma='emacsclient -a "" -t'

alias yt='podman run --rm -u root -v ~/Music/:/data:Z demixire/yt-dlp:0.0.1 -f ba -x --merge-output-format mkv --add-metadata --embed-thumbnail  -o "%(title)s.mkv"'
