export LS_OPTIONS='--color=auto'
export CLICOLOR='Yes'
export LSCOLORS='exfxcxdxbxegedabagacad'

export PS1='\u @ \w $ '

export PATH=$PATH:~/bin/jruby-9.2.0.0/bin:~/go/bin

alias vim=mvim
alias ll='ls -l'

export CLASSPATH=".:/usr/local/lib/antlr-4.7.1-complete.jar:$CLASSPATH"
alias antlr4='java -jar /usr/local/lib/antlr-4.7.1-complete.jar'
alias grun='java -cp "/usr/local/lib/antlr-4.7.1-complete.jar:$CLASSPATH" org.antlr.v4.gui.TestRig'

export GO111MODULE=on
