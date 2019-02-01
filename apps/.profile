printf "Loading .mike..."
# Add .mike/bin to path
export $PATH="$PATH:$HOME/.mike/bin"

### Universal Env Vars

$VISUAL="code"

### Aliases
alias dp="cd $HOME/dev-projects"
alias cc="cd $HOME/dev-projects/cc"
alias mike="cd $HOME/.mike"

alias sb="source ~/.zshrc"

echo "Success!"