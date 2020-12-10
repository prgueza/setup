## PATHS
export PATH="$(npm -g bin)":$HOME/bin:/usr/local/bin:$PATH
export ZSH=$HOME/.oh-my-zsh

## THEME
ZSH_THEME="robbyrussell"

## ZSH CONFIG
CASE_SENSITIVE="false"
HYPHEN_INSENSITIVE="false"
DISABLE_AUTO_UPDATE="false"
DISABLE_LS_COLORS="false"
DISABLE_AUTO_TITLE="false"
ENABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="false"
DISABLE_UNTRACKED_FILES_DIRTY="false"
HIST_STAMPS="dd/mm/yyyy"
export UPDATE_ZSH_DAYS=14

## PLUGINS
plugins=(node npm docker)
plugins+=(git git-extras git-flow)
plugins+=(osx brew wd web-search copyfile)

source $ZSH/oh-my-zsh.sh

## ALIAS

### ZSH
alias c="clear"
alias zconfig="vim $HOME/.zshrc"
alias zrestart=". ~/.zshrc"
alias zrestore="cp ~/code/setup/zsh/.zshrc ~/.zshrc"
alias zsave="cp ~/.zshrc ~/code/setup/zsh/.zshrc"
alias zalias="more ~/.zshrc | grep ^alias"

### ATOM
alias asave="apm list --installed --bare > ~/code/setup/atom/atom-packages.txt && cp ~/.atom/*.{cson,less} ~/code/setup/atom/"
alias arestore="apm install --packages-file ~/code/setup/atom/atom-packages.txt && cp ~/code/setup/atom/*.{cson,less} ~/.atom/"
alias aconfig="vim ~/.atom/setup.cson"
alias astyles="vim ~/.atom/styles.less"
alias akeymap="vim ~/.atom/keymap.cson"
alias asnippets="vim ~/.atom/snippets.cson"

### HYPER
alias hsave="cp ~/.hyper.js ~/code/setup/hyper/.hyper.js"
alias hrestore="cp ~/code/setup/hyper/.hyper.js ~/.hyper.js"

### GIT
alias gsave="cp ~/.gitconfig ~/code/setup/git/.gitconfig"
alias grestore="cp ~/code/setup/git/.gitconfig ~/.gitconfig"
alias galias="git config --get-regexp ^alias\."

eval $(thefuck --alias)
