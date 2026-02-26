# Source homebrew bins so that task runners in non-interactive sessions can
# find them.
set -x PATH /opt/homebrew/bin $PATH
set -x PATH /opt/homebrew/sbin $PATH
# Volta bins for npm packages (use volta install)
set -x PATH $HOME/.volta/bin $PATH
# This tells programs that integrate with docker where to look.
set -x DOCKER_HOST "unix:///Users/bolaney/.colima/default/docker.sock"
