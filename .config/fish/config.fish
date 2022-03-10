if status is-interactive
    # Commands to run in interactive sessions can go here

    starship init fish | source

    set -u fish_greeting "Hey $USER!"
end

set -g EDITOR nano

alias c="cd ~/Documents/code/"

alias ls="exa"
alias ll="exa -l"
alias la="exa -la"

alias kl="kubectl logs"

# Java aliases 
alias mvn8 "JAVA_HOME=(/usr/libexec/java_home -v 1.8) mvn"
alias mvn11 "JAVA_HOME=(/usr/libexec/java_home -v 11) mvn"

#
# gcloud
#

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/fabien/google-cloud-sdk/path.fish.inc' ]; source '/Users/fabien/google-cloud-sdk/path.fish.inc'; end

# The next line enables shell command completion for gcloud.
if [ -f '/Users/fabien/google-cloud-sdk/completion.fish.inc' ]; source '/Users/fabien/google-cloud-sdk/completion.fish.inc'; end


#
# Path variables
#

fish_add_path /Users/fabien/go/bin /usr/local/opt/node@12/bin /Users/fabien/.cargo/bin

fish_add_path /Library/Java/JavaVirtualMachines/openjdk-11.jdk/Contents/Home/bin
# fish_add_path /usr/local/opt/openjdk/bin
# fish_add_path /Library/Java/JavaVirtualMachines/jdk1.8.0_251.jdk/Contents/Home/jre/bin
# fish_add_path /Library/Java/JavaVirtualMachines/openjdk.jdk/Contents/Home/bin

#set -g JAVA_HOME /Library/Java/JavaVirtualMachines/jdk1.8.0_251.jdk/Contents/Home/jre/bin

#set -g JAVA16_HOME /Users/fabien/Library/Java/JavaVirtualMachines/azul-16.0.2/Contents/Home


fish_add_path /usr/local/opt/php@7.4/bin
fish_add_path /usr/local/opt/php@7.4/sbin

fish_add_path /usr/local/opt/helm@2/bin

fish_add_path $HOME/.krew/bin
