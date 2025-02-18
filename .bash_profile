#################################
# General aliases and settings
#################################

source ~/.bashrc

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:/usr/local/Cellar:/usr/local/opt:/usr/local/bin:$HOME/.local/bin:$PATH"
export EDITOR=vim
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

alias lock='open -a /System/Library/Frameworks/ScreenSaver.framework/Versions/A/Resources/ScreenSaverEngine.app'

HISTFILESIZE=5000

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

#export JAVA_HOME="$(/usr/libexec/java_home)"

# https://hub.github.com/
eval "$(hub alias -s)"

alias pp_json='python -mjson.tool'
alias burp='nohup java -XX:MaxPermSize=1G -jar /Applications/burpsuite_free_v1.6.32.jar & exit'
alias firefoxp='/Applications/FirefoxDeveloperEdition.app/Contents/MacOS/firefox-bin -ProfileManager'
alias repo='cd /Users/wlam/repositories/'
alias cat='bat'
alias tf='terraform'

##########
# Homebrew
#########

eval "$(/opt/homebrew/bin/brew shellenv)"

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

##########
# rbenv
##########

eval "$(rbenv init -)"

##########
# Pyenv
##########

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

#################################
# Fix Apple's annoying zsh banner
#################################

export BASH_SILENCE_DEPRECATION_WARNING=1
