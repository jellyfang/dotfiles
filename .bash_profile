export PATH=/usr/local/bin:/usr/local/share/python:$PATH
export PATH
export PATH=$PATH:/usr/local/sbin

export WORKON_HOME=$HOME/.virtualenvs
source "$(which virtualenvwrapper.sh)"
export PIP_VIRTUALENV_BASE=$WORKON_HOME

# mkdir, cd into it
mkcd () {
mkdir -p "$*"
cd "$*"
}

# Easy navigation
alias up='cd ..; ls -l'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ~='cd ~'
alias -- -='cd --'
alias ls='ls -l -G'
alias lsa='ls -a -G'

# Shortcuts
alias shirtsio='cd ~/Dropbox/ooshirts/shirtsio'
alias integrations='cd ~/Dropbox/ooshirts/integrations'
alias proj='cd ~/Dropbox/Projects'
alias labs='cd ~/Dropbox/Labs'
alias code='cd ~/Dropbox/Code'
alias eddie='cd ~/Dropbox/Projects/NeverGloomy/eddie'
alias d='cd ~/Dropbox'
alias dl='cd ~/Downloads'
alias dt='cd ~/Desktop'
alias g='git'
alias h='history'
alias j='jobs'
alias o='open'
alias oo='open .'

# Time
alias week='date +%V'
alias clock='date +%T'
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

# IP
alias ip='dig +short myip.opendns.com @resolver1.opendns.com'
alias localip='ipconfig getifaddr en0'
alias ips="ifconfig -a | grep -o 'inet6\? \(\([0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\)\|[a-fA-F0-9:]\+\)' | sed -e 's/inet6* //'"

# Enhanced WHOIS
alias whois='whois -h whois-servers.net'

# Flush directory service cache
alias flush="dscacheutil -flushcache && killall -HUP mDNSResponder"
alias sniff="sudo ngrep -d 'en0' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en0 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# ROT13-encode text. Works for decoding, too! ;)
alias rot13='tr a-zA-Z n-za-mN-ZA-M'

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# URL-encode strings
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'

# Stuff I never really use but cannot delete either because of http://xkcd.com/530/
alias stfu="osascript -e 'set volume output muted true'"
alias pumpitup="osascript -e 'set volume 7'"
