printf "Loading .mike/.profile... "

export DOTMIKE="$HOME/.mike"

# Add .mike/bin to path
export PATH="$PATH:$HOME/.mike/bin"

### Colors
export DEFAULT="\e[39m"
export BLACK="\e[30m"
export RED="\e[31m"
export GREEN="\e[32m"
export YELLOW="\e[33m"
export BLUE="\e[34m"
export MAGENTA="\e[35m"
export CYAN="\e[36m"
export LIGHT_GRAY="\e[37m"
export DARK_GRAY="\e[90m"
export LIGHT_RED="\e[91m"
export LIGHT_GREEN="\e[92m"
export LIGHT_YELLOW="\e[93m"
export LIGHT_BLUE="\e[94m"
export LIGHT_MAGENTA="\e[95m"
export LIGHT_CYAN="\e[96m"
export WHITE="\e[97m"

export BOLD="\e[1m"
export NORMAL="\e[0m"

### Set Command Line Prompt
export PROMPT="$(echo $BOLD$WHITE)[%*]$(echo $NORMAL$DEFAULT) $PROMPT"

### Uiversal Env Vars

export VISUAL="code"

### Aliases

    ## Navigation
    alias ls="ls -a"
    alias dp="cd $HOME/dev-projects"
    alias cc="cd $HOME/dev-projects/cc"
    alias mike="cd $HOME/.mike"
    alias t="touch"

    ## Git
    alias git="hub"
    alias gri="git rebase -i"
    alias gc-f="git commit -F .commit-msg"
    alias gcm="git commit -m"
    alias gca="git commit --amend"

    ## Misc
    alias sb="source ~/.zshrc"

### Enable Autosuggestions
# Weird bug in this right now...
# source "$DOTMIKE/zsh-autosuggestions/zsh-autosuggestions.zsh"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

echo "Success!"