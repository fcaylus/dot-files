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

nvm use 16

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

fish_add_path /Users/fabien/go/bin 
fish_add_path /Users/fabien/.cargo/bin

fish_add_path /Library/Java/JavaVirtualMachines/openjdk-11.jdk/Contents/Home/bin

fish_add_path /usr/local/opt/helm@2/bin

fish_add_path $HOME/.krew/bin

if status is-interactive
  and not set -q ZELLIJ
  and not set -q __INTELLIJ_COMMAND_HISTFILE__
  and not set -q FIG_JETBRAINS_SHELL_INTEGRATION
  and not set -q IDEA_INITIAL_DIRECTORY
  and test "$TERM_PROGRAM" != "Lens"
  zellij
end
