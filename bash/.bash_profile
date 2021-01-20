
# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

# java
export JAVA_8='/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home'
export JAVA_11='/Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home'

alias j8='export JAVA_HOME=$JAVA_8;export PS1="\[\033]0;$TITLEPREFIX:$PWD\007\]\n\[\033[32m\]\u@\h \033[31m\]J8 \[\033[33m\]\w\[\033[36m\]`__git_ps1`\[\033[0m\]\n$ "'
alias j11='export JAVA_HOME=$JAVA_11;export PS1="\[\033]0;$TITLEPREFIX:$PWD\007\]\n\[\033[32m\]\u@\h \033[31m\]J11 \[\033[33m\]\w\[\033[36m\]`__git_ps1`\[\033[0m\]\n$ "'
#Default
j11
