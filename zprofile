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
    # Export debug mode for express, for node.
    export DEBUG="espress:*"
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
    [ -f "$HOME/.nvmrc" ] && nvm use > /dev/null 2>&1
}

source $HOME/.ssh-agent.incsh

