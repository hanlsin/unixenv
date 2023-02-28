# unixenv

This is a repository to setup a terminal environment easily on UNIX-like OS: such as Ubuntu, Mac, etc.

# Choose your preferences

- shll
  - bash
  - [zsh](#use-zsh)
- [vim](#prepare-and-setup-vim)
- [tmux](#prepare-and-setup-tmux)
- [fzf](#prepare-setup-fzf)

# Quickstart

## Mac

```shell
brew install git
git clone https://github.com/hanlsin/unixenv.git ~/.unixenv
brew install zsh
~/.unixenv/setup.sh
brew install vim
ln -s ~/.unixenv/unixenv_vimrc ~/.vimrc
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vi ~/.vimrc
# Please execute :PlugInstall in the vim
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

## Ubuntu

```shell
sudo apt install git
git clone https://github.com/hanlsin/unixenv.git ~/.unixenv
sudo apt install zsh
~/.unixenv/setup.sh
sudo apt install vim
ln -s ~/.unixenv/unixenv_vimrc ~/.vimrc
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vi ~/.vimrc
# Please execute :PlugInstall in the vim
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

# How to use?

## Clone the repository

```shell
git clone https://github.com/hanlsin/unixenv.git ~/.unixenv
```

or clone this repository and set `UNIXENV_HOME=<where_the_repository_path_is>`.

## Setup profiles

If your preferred shell (`bash` or `zsh`) was prepared, environment variables would be registered in the resource file automatically with the below command.

```shell
~/.unixenv/setup.sh
```

## Create symbolic links

```bash
touch ~/.local_profile
```

There is a new env file to prevent uploading critical inforation on github accidently.

You can insert any aliases or variables in `~/.local_profile`, and it will be safe from accidental uploading.

# Use Zsh

## Install Zsh

### Mac

```bash
brew install zsh
```

### Ubuntu

```bash
sudo apt install zsh
```

## Install [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### plugins

```bash
vi ~/.zshrc
```

Find `plugins` and input the below in the `.zshrc` file.

```
plugins=(
    git
    pipenv
    virtualenv
)
```

# Setup personal envs

```bash
vi ~/.zshrc
```

Input the below in the `.zshrc` file.

```
[[ ! -f ~/.unixenv/.unixenv_profile ]] || ~/.unixenv/.unixenv_profile
```

## Setup [Powerlevel10k](https://github.com/romkatv/powerlevel10k)

```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
```

Find `ZSH_THEME` and input the below in the `.zshrc` file.

```
#ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"
```

To customize prompt

```shell
ln -s ~/.unixenv/p10k.zsh ~/.p10k.zsh
# or
p10k configure
```

Input the below in the `.zshrc` file

```
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
```

# Use Vim

## Install Vim

### Mac

```bash
brew install vim
```

### Ubuntu

```bash
sudo apt install vim
```

## Setup Vim configuration

Create a symbolic link for `~/.vimrc`

```bash
ln -s ~/.unixenv/unixenv_vimrc ~/.vimrc
```

or, if already `~/.vimrc` exists, add the below context into the file.

```
" call default_vimrc
if filereadable($UNIXENV_VIMRC_PATH . "/default_vimrc")
    so $UNIXENV_VIMRC_PATH/default_vimrc
endif
```

## Prepare plugin managers

### for [vim-plug](https://github.com/junegunn/vim-plug)

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## Setup plugin managers

```
vi ~/.vimrc
:PlugInstall
```

# Use [fzf](https://github.com/junegunn/fzf)

```shell
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

# Use Tmux

## Zsh on Tmux

```bash
ln -s ~/.unixenv/tmux.zsh.conf ~/.tmux.conf
```

## Bash on Tmux

```bash
ln -s ~/.unixenv/tmux.bash.conf ~/.tmux.conf
```

## [Tmux Plugin Manager (tpm)](https://github.com/tmux-plugins/tpm)

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

# Setup font

I recommend to install the `Meslo Nerd Font` font via

- [Powerlevel10k](https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k)
- [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts)
