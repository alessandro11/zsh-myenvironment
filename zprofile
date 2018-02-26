JavaEnvOracle() {
	export JAVA_HOME=/opt/java/
	export PATH=$PATH:/opt/java/bin
}

JavaEnv() {
    local version="$1"
    export JAVA_HOME=/usr/lib/jvm/java-${version:-8}-openjdk
    export PATH=$PATH:/usr/lib/jvm/java-${version:-8}-openjdk/bin
}

AndroidEnv() {
	source "$HOME/projects/androidenv/environment.sh"
}

NvmEnv() {
	export NVM_DIR="$HOME/.nvm"
	[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
	[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
}

source $HOME/.ssh-agent.incsh

# Load X if logged from tty1
if [ "`tty`" = "/dev/tty1" ] && [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
    exec startx -- :0 -novtswitch -noreset -verbose 3 -nolisten tcp
fi

