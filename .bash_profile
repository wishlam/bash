source ~/.profile

export EDITOR=vim
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

alias pp_json='python -mjson.tool'
alias burp='nohup java -XX:MaxPermSize=1G -jar /Applications/burpsuite_free_v1.6.25.jar & exit'
alias firefoxp='/Applications/FirefoxDeveloperEdition.app/Contents/MacOS/firefox-bin -ProfileManager'
alias burpit='burp; firefoxp'

HISTFILESIZE=4000

source ~/.git-completion.bash
if [ -f ~/.bashrc ]; then
     source ~/.bashrc
fi

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export JAVA_HOME="$(/usr/libexec/java_home)"
export RBENV_ROOT=/usr/local/var/rbenv

eval "$(rbenv init -)"
eval "$(hub alias -s)"
