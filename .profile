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

printf "${LIGHT_BLUE}${BOLD}Loading .mike/.profile... ${NORMAL}${DEFAULT}"

### Universal Env Vars
export VISUAL="code"
export BAT_THEME="TwoDark"

source_if_present() {
  if [[ -f "$1" ]]; then
    source "$1"
  else
    echo "${RED}Unable to source - File not found: ${BOLD}\`$1\`${NORMAL}${DEFAULT}"
  fi
}

export DOTMIKE="$HOME/.mike"

# Load secrets
source_if_present "$DOTMIKE/.secrets"

# Add .mike/bin to path
export PATH="$PATH:$HOME/.mike/bin"

export CARECLOUD_DIR="$HOME/dev-projects/cc"

export HISTFILE=~/.zsh_history
export HISTSIZE=100000
export SAVEHIST=$HISTSIZE

### Enable Autosuggestions
# Weird bug in this right now...
# source "$DOTMIKE/zsh-autosuggestions/zsh-autosuggestions.zsh"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Initialize pyenv
eval "$(pyenv init -)"

# Gvm (golang version manager)
source_if_present /Users/mikegregory/.gvm/scripts/gvm
export DEFAULT_GOPATH="$HOME/go"
export GOPATH="$DEFAULT_GOPATH:$HOME/dev-projects/cc"
export PATH="$PATH:$GOPATH/bin"

# Point to OpenSSL 1.0.2
export CPPFLAGS=-I/usr/local/opt/openssl/include
export LDFLAGS=-L/usr/local/opt/openssl/lib

# Add Personal bash completions
source_if_present "$CARECLOUD_DIR/conductor_metadata/bin/point-completion.bash"

### Aliases

    ## Navigation
    alias ls="ls -a"
    alias dp="cd $HOME/dev-projects"
    alias cc="cd $CARECLOUD_DIR"
    alias godir="cd $DEFAULT_GOPATH"
    alias mike="cd $HOME/.mike"
    alias t="touch"

    ## Git
    alias git="hub"
    alias gri="git rebase -i"
    alias gc-f="git commit -F .commit-msg"
    alias gcm="git commit -m"
    alias gca="git commit --amend"

    ## Misc/Config
    alias sb="source_if_present ~/.zshrc"
    alias path="ruby -e \"puts ENV['PATH'].split(':')\""

    export MAGICK_HOME="$HOME/ImageMagick-7.0.8"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/mikegregory/.mike/apps/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/mikegregory/.mike/apps/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/mikegregory/.mike/apps/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/mikegregory/.mike/apps/google-cloud-sdk/completion.zsh.inc'; fi

echo "${BOLD}${GREEN}Success!${NORMAL}${DEFAULT}"