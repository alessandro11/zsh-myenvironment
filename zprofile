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
    export NVM_DIR="$HOME/.nvm"
    if [ -s "$NVM_DIR/nvm.sh" ]; then
        \. "$NVM_DIR/nvm.sh"  # This loads nvm

        # Export debug mode for express, for node.
        export DEBUG="express:*"
        # if you have run command for nvm, use it as user defined
        [ -f "$HOME/.nvmrc" ] && nvm use
    else
        unset NVM_DIR
    fi

}

[ -s $HOME/.rsa_pass ] && source $HOME/.rsa_pass
[ -s $HOME/.ecdsa_pass ] && source $HOME/.ecdsa_pass
source $HOME/.ssh-agent.sh

