# If you come from bash you might have to change your $PATH.
unsetopt correct_all
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PROJECTS="$HOME/Code"
export PATH="$HOME/.composer/vendor/bin:/usr/local/bin:$PATH"
export Z="$HOME/.zshrc"
# export PATH="$PATH:$HOME/.composer/vendor/bin"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"


# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="false"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  gitfast
  gitprompt
  z
  zsh-autosuggestions
  extract
  npm
  osx
  yarn
  colored-man-pages
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='code'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="$HOME/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="code $HOME/.zshrc"
alias ohmyzsh="code $HOME/.oh-my-zsh"
alias c="cd $PROJECTS/${1}"
alias e="$EDITOR ${1-.}"
alias key="cat $HOME/.ssh/id_rsa.pub | pbcopy"
alias create=mkdir "$l && cd $_"
alias cls="clear"
alias sourcez="source $Z"

###-tns-completion-start-###
if [ -f $HOME/.tnsrc ]; then 
    source $HOME/.tnsrc 
fi
function pushdots() {
  (cd $HOME/.dots && git add . && git commit -m "$(date)" && git push)
}

function pulldots() {
  (cd $HOME/.dots && git pull)
}

function editvim() {
   vim ~/.vimrc
}

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
