JavaEnvOracle() {
	export JAVA_HOME=/opt/java/
	export PATH=/opt/java/bin:$PATH
}

JavaEnv() {
    local version="$1"
    export JAVA_HOME=/usr/lib/jvm/java-${version:-8}-openjdk
    export PATH=/usr/lib/jvm/java-${version:-8}-openjdk/bin:$PATH
}

AndroidEnv() {
	source "$HOME/projects/androidenv/environment.sh"
}

NvmEnv() {
    # Export debug mode for express, for node.
    export DEBUG="express:*"
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -f "$HOME/.nvmrc" ] && nvm use > /dev/null 2>&1
}

export TERM=xterm-256color
source $HOME/.ssh-agent.incsh

