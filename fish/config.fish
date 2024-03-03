### Homebrew ###
set -x PATH $PATH /opt/homebrew/bin/

### Golang ###
set -x GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin

### Python ###
set -Ux PYENV_ROOT $HOME/.pyenv
set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths
pyenv init - | source

### The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/yukimatsuzaki/google-cloud-sdk/path.fish.inc' ]; . '/Users/yukimatsuzaki/google-cloud-sdk/path.fish.inc'; end

### Rust ###
# set -x PATH $PATH $HOME/.cargo/bin

### Ruby ###
set -x PATH $HOME/.rbenv/shims $PATH

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
set --export --prepend PATH "/Users/yukimatsuzaki/.rd/bin"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/yukimatsuzaki/Desktop/google-cloud-sdk/path.fish.inc' ]; . '/Users/yukimatsuzaki/Desktop/google-cloud-sdk/path.fish.inc'; end

[ -f ~/.inshellisense/key-bindings.fish ] && source ~/.inshellisense/key-bindings.fish
# pnpm
set -gx PNPM_HOME "/Users/yukimatsuzaki/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
