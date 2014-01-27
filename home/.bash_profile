export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export JAVA_HOME=`/usr/libexec/java_home`

if [ -f ~/.bashrc ] ; then
  . ~/.bashrc
fi

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/ryoji/.gvm/bin/gvm-init.sh" ]] && source "/Users/ryoji/.gvm/bin/gvm-init.sh"
