#################################
# General aliases and settings
#################################

source ~/.bashrc
source /usr/local/Cellar/pyenv/1.0.2/completions/pyenv.bash

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:/Users/wlam/.local/bin:$PATH"
export EDITOR=vim
export CLICOLOR=1
#Use preloaded profiles for iTerm instead of the line below.
#export LSCOLORS=GxFxCxDxBxegedabagaced
export PYENV_VERSION=2.7.12

alias lock='open -a /System/Library/Frameworks/ScreenSaver.framework/Versions/A/Resources/ScreenSaverEngine.app'

HISTFILESIZE=5000

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

export JAVA_HOME="$(/usr/libexec/java_home)"
export EC2_HOME="/usr/local/Cellar/ec2-api-tools/1.7.4.0/libexec"
eval "$(hub alias -s)"

alias pp_json='python -mjson.tool'
alias burp='nohup java -XX:MaxPermSize=1G -jar /Applications/burpsuite_free_v1.6.32.jar & exit'
alias firefoxp='/Applications/FirefoxDeveloperEdition.app/Contents/MacOS/firefox-bin -ProfileManager'
alias repo='cd /Users/wlam/repositories/'
#alias inventory='echo "/Users/wlam/repositories/deploy/bin/ec2.py"'

##########
# rbenv
##########

eval "$(rbenv init -)"
export RBENV_ROOT=/usr/local/var/rbenv

##########
# Pyenv
##########

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

########
# lulz
########

export ANSIBLE_COW_SELECTION=daemon
eval "$(thefuck --alias)"

###################################
# tag-ag
# https://github.com/aykamko/tag
###################################

if hash ag 2>/dev/null; then
  tag() { command tag "$@"; source ${TAG_ALIAS_FILE:-/tmp/tag_aliases} 2>/dev/null; }
  alias ag=tag
fi
