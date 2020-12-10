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
alias zrestore="cp ~/code/config/zsh/.zshrc ~/.zshrc"
alias zsave="cp ~/.zshrc ~/code/config/zsh/.zshrc"
alias zalias="more ~/.zshrc | grep ^alias"

### ATOM
alias asave="apm list --installed --bare > ~/code/config/atom/atom-packages.txt && cp ~/.atom/*.{cson,less} ~/code/config/atom/"
alias arestore="apm install --packages-file ~/code/config/atom/atom-packages.txt && cp ~/code/config/atom/*.{cson,less} ~/.atom/"
alias aconfig="vim ~/.atom/config.cson"
alias astyles="vim ~/.atom/styles.less"
alias akeymap="vim ~/.atom/keymap.cson"
alias asnippets="vim ~/.atom/snippets.cson"

### HYPER
alias hsave="cp ~/.hyper.js ~/code/config/hyper/.hyper.js"
alias hrestore="cp ~/code/config/hyper/.hyper.js ~/.hyper.js"

### GIT
alias gsave="cp ~/.gitconfig ~/code/config/git/.gitconfig"
alias grestore="cp ~/code/config/git/.gitconfig ~/.gitconfig"
alias galias="git config --get-regexp ^alias\."

eval $(thefuck --alias)
