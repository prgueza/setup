# Setup

### 1. Clone the repository:

```sh
$ git clone git@github.com:pedro-rodalia/setup.git ~/code/setup
```

### 2. Install oh-my-zsh

First check `homebrew` and `zsh` version using:

```sh
$ brew --version
$ zsh --version
```

Install `homebrew` and/or `zsh` in case they are not already installed:

```sh
# Install Home Brew
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# Install ZSH
$ brew install zsh
```

Set `zsh` as the default shell using:

```sh
$ chsh -s /usr/local/bin/zsh
```

Install `oh-my-zsh`:

```sh
$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Replace the `.zshrc` file with the one from this repo. Once this is done some of the aliases that the configuration provides can be used. Use the command `zalias` in order to get the list of available aliases:

```sh
$ zalias
alias c="clear"
alias zconfig="vim $HOME/.zshrc"
alias zrestart=". ~/.zshrc"
alias zrestore="cp ~/code/setup/zsh/.zshrc ~/.zshrc"
alias zsave="cp ~/.zshrc ~/code/setup/zsh/.zshrc"
alias zalias="more ~/.zshrc | grep ^alias"
alias asave="apm list --installed --bare > ~/code/setup/atom/atom-packages.txt && cp ~/.atom/*.{cson,less} ~/code/setup/atom/"
alias arestore="apm install --packages-file ~/code/setup/atom/atom-packages.txt && cp ~/code/setup/atom/*.{cson,less} ~/.atom/"
alias aconfig="vim ~/.atom/config.cson"
alias astyles="vim ~/.atom/styles.less"
alias akeymap="vim ~/.atom/keymap.cson"
alias asnippets="vim ~/.atom/snippets.cson"
alias hsave="cp ~/.hyper.js ~/code/setup/hyper/.hyper.js"
alias hrestore="cp ~/code/setup/hyper/.hyper.js ~/.hyper.js"
alias gsave="cp ~/.gitconfig ~/code/setup/git/.gitconfig"
alias grestore="cp ~/code/setup/git/.gitconfig ~/.gitconfig"
alias galias="git config --get-regexp ^alias\."
```

### 3. Setup Git

Setup Git using the `grestore` command provided by the `.zshrc` file:

```sh
$ grestore
```

### 4. Install hyper.js

Install `hyper` using `homebrew` or [download](https://releases.hyper.is/download/mac) the app from their website. Then replace the `.hyper.js` configuration file with the one from this repo using the `hrestore` command provided by the `.zshrc` file:

```sh
$ brew install --cask hyper
$ hrestore
```

### 5. Install node and n

Install `n` using `homebrew`:

```sh
$ brew install n
```

Take ownership of default directories for the `n` installation:

```sh
# make cache folder (if missing) and take ownership
sudo mkdir -p /usr/local/n
sudo chown -R $(whoami) /usr/local/n
# take ownership of node install destination folders
sudo chown -R $(whoami) /usr/local/bin /usr/local/lib /usr/local/include /usr/local/share
```

Install `node` stable version

```sh
$ n stable
```

### 6. Install Atom

Install `atom` using `homebrew` or [download](https://atom.io/download/mac) the app from their website. Then install atom packages and replace the config files using the `arestore` command provided by the `.zshrc` file:

```sh
$ brew install --cask atom
$ arestore
```

### 7. Install thefuck (optional)

Install `thefuck` app using `home brew`:

```sh
$ brew install thefuck
```
