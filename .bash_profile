source ~/.profile

export EDITOR=vim

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

alias pp_json='python -mjson.tool'
alias burp='nohup java -XX:MaxPermSize=1G -jar /Applications/burpsuite_pro_v1.6.18.jar & exit'
alias firefoxp='/Applications/FirefoxAurora.app/Contents/MacOS/firefox-bin -ProfileManager'
alias burpit='burp; firefoxp'

HISTFILESIZE=4000

source ~/.git-completion.bash
source ~/.bashrc

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"

export JAVA_HOME="$(/usr/libexec/java_home)"

export RBENV_ROOT=/usr/local/var/rbenv
