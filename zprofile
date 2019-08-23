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
    export PATH=node_modules/@angular/cli/bin:$PATH
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

export TERM=xterm-256color
#source $HOME/.ssh-agent.incsh

source  ~/.powerlevel9k/powerlevel9k.zsh-theme
