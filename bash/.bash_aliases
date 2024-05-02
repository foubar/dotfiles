
alias c='clear'
alias colordiff='colordiff -ru'

alias d='git diff'
alias dat='date "+%Y-%m-%d"'
alias dd='dd status=progress'
alias df='df -h'
alias diff='diff -ru'
alias ds='git diff --staged'

alias egrep='egrep --color=auto'

alias fdat='date "+%Y-%m-%d %H:%M:%S"'
alias fgrep='fgrep --color=auto'

alias gitbackup='DATE="$(date +%Y-%m-%d-%H-%M-%S)"; git diff > ~/gitbackup-${DATE}-unstaged.patch; git diff --staged > ~/gitbackup-${DATE}-staged.patch'
alias gitcleanandreset='git clean -fxd; git reset --hard;'
alias grep='grep --color=auto'

alias h='history |grep'
alias hexdump='hexdump -C'

alias l='git log'
alias la='ls -A --color=auto'
alias lg='git log --decorate --all --oneline --graph'
alias ll='ls -Flisa --color=auto'
alias lock='gnome-screensaver-command --lock'
alias ls='ls --color=auto'
alias lt='ls -Flisatr --color=auto'
alias ltr='ls -Flisat --color=auto'

alias m='gnome-screensaver-command --lock'

alias nvim='~/.local/bin/run-neovim.sh'

alias p='ps faux'

alias q='exit'
alias :q='exit'

alias r='reset'

alias s='git status'
alias screen='mkdir -pv "${HOME}/screen/$(date "+%Y-%m")" && screen -Logfile "${HOME}/screen/$(date "+%Y-%m")/$(date "+%Y-%m-%d %H:%M:%S") screen.log"'
alias sudo='sudo -k'

alias vi='~/.local/bin/run-neovim.sh'
alias vim='~/.local/bin/run-neovim.sh'

if [ -f ~/.bash_aliases.local ]
then
    source ~/.bash_aliases.local
fi
