git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

hg_branch() {
    hg branch 2> /dev/null | awk '{print ":("$1")"}'
}

export PS1="\[\033[36m\]\u\[\033:\[\033[33;1m\]\w\[\033[m\]\[\033[32m\]\$(git_branch)\[\033[00m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

export ANDROID_HOME="/Users/mrafalko/Library/Android/sdk/"
export PATH="/usr/local/php5/bin:/usr/local/mysql/bin:/Users/mrafalko/.composer/vendor/bin:/Users/mrafalko/Library/Python/3.6/bin:$PATH"

#export PHPBREW_SET_PROMPT=1
#source /Users/mrafalko/.phpbrew/bashrc

ulimit -S -n 8096

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export HOST_UID=$(id -u)
