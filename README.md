# unixenv

This is a repository to store YP's common enviroment files for unix-like OS.

## Support Environments

* bash
* zsh
* vim
* tmux

## How to use?

### Clone the repository

```bash
cd ~
git clone git@github.com:hanlsin/unixenv.git
```

### Create symbolic links

```bash
ln -s unixenv/yp_profile yp_profile
ln -s unixenv/yp_vimrc yp_vimrc
ln -s unixenv/yp_env_vars yp_env_vars
ln -s unixenv/.vimrc .vimrc
ln -s unixenv/.bash_aliases .bash_aliases
ln -s unixenv/.p10k.zsh .p10k.zsh
```

### Use Zsh

#### Setup [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

##### plugins

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

#### Setup [Powerlevel10k](https://github.com/romkatv/powerlevel10k)

```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
```

Find `ZSH_THEME` and input the below in the `.zshrc` file.

```
#ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"
```

Input the below in the `.zshrc` file.

```
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
```

#### Setup personal envs

```bash
vi ~/.zshrc
```

Input the below in the `.zshrc` file.

```
if [ -f ~/yp_env_vars ]; then
    . ~/yp_env_vars
fi
```

#### Use Zsh on Tmux

```bash
ln -s unixenv/.tmux.zsh.conf .tmux.conf
```

### Use Bash

#### Use Bash on Tmux

```bash
ln -s unixenv/.tmux.bash.conf .tmux.conf
```

## Prepare and Setup Vim

### Prepare plugin managers

#### for [vim-plug](https://github.com/junegunn/vim-plug)

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

#### for [Vundle](https://github.com/VundleVim/Vundle.vim)

```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

### Setup plugin managers

```
vi .vimrc
:PlugInstall
:PluginInstall
```

If it's not working, please re-install `vim` again.

#### Mac

```bash
brew install vim
```

#### Ubuntu

```bash
sudo apt install vim
```

## Prepare and Setup Tmux

### Prepare [Tmux Plugin Manager (tpm)](https://github.com/tmux-plugins/tpm)

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

