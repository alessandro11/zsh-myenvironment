jenvoracle()
{
    export JAVA_HOME=/opt/java/jre
    export PATH=$PATH:/opt/java/jre/bin
}

jenv()
{
		local version="$1"
    export JAVA_HOME=/usr/lib/jvm/java-${version:-8}-openjdk
    export PATH=$PATH:/usr/lib/jvm/java-${version:-8}-openjdk/jre/bin
}

andenv()
{
	source "$HOME/android/environment.sh"
}

source $HOME/.ssh-agent.incsh

# Load X if logged from tty1
if [ "`tty`" = "/dev/tty1" ] && [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
    exec startx -- :0 -novtswitch -noreset -verbose 3 -nolisten tcp
fi

