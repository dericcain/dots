# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
unsetopt correct_all
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PROJECTS="$HOME/Code"
export PATH=$PROJECTS/flutter/bin:$PATH
export Z="$HOME/.zshrc"
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=${PATH}:$HOME/Library/Android/sdk/platform-tools:$HOME/Library/Android/sdk/tools

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="false"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

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

# ctags stuff
alias ctags="`brew --prefix`/bin/ctags"

# Custom functions
function ghelp() {
  echo 'g        	git'
  echo 'ga        	git add'
  echo 'gaa        	git add --all'
  echo 'gapa        	git add --patch'
  echo 'gb        	git branch'
  echo 'gba        	git branch -a'
  echo 'gbda        	git branch --merged | command grep -vE "^(*|\smaster\s$)" | command xargs -n 1 git branch -d'
  echo 'gbl        	git blame -b -w'
  echo 'gbnm        	git branch --no-merged'
  echo 'gbr        	git branch --remote'
  echo 'gbs        	git bisect'
  echo 'gbsb        	git bisect bad'
  echo 'gbsg        	git bisect good'
  echo 'gbsr        	git bisect reset'
  echo 'gbss        	git bisect start'
  echo 'gc        	git commit -v'
  echo 'gc!	      git commit -v --amend'
  echo 'gca        	git commit -v -a'
  echo 'gcam        	git commit -a -m'
  echo 'gca!      	git commit -v -a --amend'
  echo 'gcan!      	git commit -v -a -s --no-edit --amend'
  echo 'gcb        	git checkout -b'
  echo 'gcf        	git config --list'
  echo 'gcl        	git clone --recursive'
  echo 'gclean        	git clean -df'
  echo 'gcm        	git checkout master'
  echo 'gcd        	git checkout develop'
  echo 'gcmsg        	git commit -m'
  echo 'gco        	git checkout'
  echo 'gcount        	git shortlog -sn'
  echo 'gcp        	git cherry-pick'
  echo 'gcpa        	git cherry-pick --abort'
  echo 'gcpc        	git cherry-pick --continue'
  echo 'gcs        	git commit -S'
  echo 'gd        	git diff'
  echo 'gdca        	git diff --cached'
  echo 'gdt        	git diff-tree --no-commit-id --name-only -r'
  echo 'gdw        	git diff --word-diff'
  echo 'gf        	git fetch'
  echo 'gfa        	git fetch --all --prune'
  echo 'gfo        	git fetch origin'
  echo 'gg        	git gui citool'
  echo 'gga        	git gui citool --amend'
  echo 'ggf        	git push --force origin $(current_branch)'
  echo 'ghh        	git help'
  echo 'ggpull        	ggl'
  echo 'ggpur        	ggu'
  echo 'ggpush        	ggp'
  echo 'ggsup        	git branch --set-upstream-to = origin/$(current_branch)'
  echo 'gpsup        	git push --set-upstream origin $(current_branch)'
  echo 'gignore        	git update-index --assume-unchanged'
  echo 'gignored        	git ls-files -v | grep "^:lower:"'
  echo 'git        -svn-dcommit-push	git svn dcommit && git push github master:svntrunk'
  echo 'gk        	\gitk --all --branches'
  echo 'gke        	\gitk --all $(git log -g --pretty = format:%h)'
  echo 'gl        	git pull'
  echo 'glg        	git log --stat --color'
  echo 'glgg        	git log --graph --color'
  echo 'glgga        	git log --graph --decorate --all'
  echo 'glgm        	git log --graph --max-count = 10'
  echo 'glgp        	git log --stat --color -p'
  echo 'glo        	git log --oneline --decorate --color'
  echo 'glog        	git log --oneline --decorate --color --graph'
  echo "glol        	git log --graph --pretty = format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
  echo "glola        	git log --graph --pretty = format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all"
  echo 'glp        	_git_log_prettily'
  echo 'gm        	git merge'
  echo 'gmom        	git merge origin/master'
  echo 'gmt        	git mergetool --no-prompt'
  echo 'gmtvim        	git mergetool --no-prompt --tool = vimdiff'
  echo 'gmum        	git merge upstream/master'
  echo 'gp        	git push'
  echo 'gpd        	git push --dry-run'
  echo 'gpoat        	git push origin --all && git push origin --tags'
  echo 'gpristine        	git reset --hard && git clean -dfx'
  echo 'gpu        	git push upstream'
  echo 'gpv        	git push -v'
  echo 'gr        	git remote'
  echo 'gra        	git remote add'
  echo 'grb        	git rebase'
  echo 'grba        	git rebase --abort'
  echo 'grbc        	git rebase --continue'
  echo 'grbi        	git rebase -i'
  echo 'grbm        	git rebase master'
  echo 'grbs        	git rebase --skip'
  echo 'grh        	git reset HEAD'
  echo 'grhh        	git reset HEAD --hard'
  echo 'grmv        	git remote rename'
  echo 'grrm        	git remote remove'
  echo 'grset        	git remote set-url'
  echo 'grt        	cd $(git rev-parse --show-toplevel || echo ".")'
  echo 'gru        	git reset --'
  echo 'grup        	git remote update'
  echo 'grv        	git remote -v'
  echo 'gsb        	git status -sb'
  echo 'gsd        	git svn dcommit'
  echo 'gsi        	git submodule init'
  echo 'gsps        	git show --pretty = short --show-signature'
  echo 'gsr        	git svn rebase'
  echo 'gss        	git status -s'
  echo 'gst        	git status'
  echo 'gsta        	git stash save'
  echo 'gstaa        	git stash apply'
  echo 'gstd        	git stash drop'
  echo 'gstl        	git stash list'
  echo 'gstp        	git stash pop'
  echo 'gstc        	git stash clear'
  echo 'gsts        	git stash show --text'
  echo 'gsu        	git submodule update'
  echo 'gts        	git tag -s'
  echo 'gunignore        	git update-index --no-assume-unchanged'
  echo 'gunwip        	git log -n 1 | grep -q -c "--wip--" && git reset HEAD~1'
  echo 'gup        	git pull --rebase'
  echo 'gupv        	git pull --rebase -v'
  echo 'glum        	git pull upstream master'
  echo 'gvt        	git verify-tag'
  echo 'gwch        	git whatchanged -p --abbrev-commit --pretty = medium'
  echo 'gwip        	git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit -m "--wip--"'
}
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
