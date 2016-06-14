#################################
# General aliases and settings
#################################

source ~/.profile

export EDITOR=vim

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

alias pp_json='python -mjson.tool'
alias burp='nohup java -XX:MaxPermSize=1G -jar /Applications/burpsuite_free_v1.6.32.jar & exit'
alias firefoxp='/Applications/FirefoxDeveloperEdition.app/Contents/MacOS/firefox-bin -ProfileManager'
alias lock='open -a /System/Library/Frameworks/ScreenSaver.framework/Versions/A/Resources/ScreenSaverEngine.app'
alias inventory='echo "/Users/wlam/repositories/iloan/deploy/bin/ec2.py"'

HISTFILESIZE=5000

source ~/.git-completion.bash
if [ -f ~/.bashrc ]; then
     source ~/.bashrc
fi

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:/Users/wlam/.local/bin:$PATH"
export JAVA_HOME="$(/usr/libexec/java_home)"
export RBENV_ROOT=/usr/local/var/rbenv
export EC2_HOME="/usr/local/Cellar/ec2-api-tools/1.7.4.0/libexec"

eval "$(rbenv init -)"
eval "$(hub alias -s)"

########
# lulz
########

export ANSIBLE_COW_SELECTION=daemon

###################################
# tag-ag
# https://github.com/aykamko/tag
###################################

if hash ag 2>/dev/null; then
  tag() { command tag "$@"; source ${TAG_ALIAS_FILE:-/tmp/tag_aliases} 2>/dev/null; }
  alias ag=tag
fi
