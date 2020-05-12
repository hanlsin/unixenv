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
ln -s unixenv/.vimrc .vimrc
ln -s unixenv/.bash_aliases .bash_aliases
```

### use  Bash on Tmux

```bash
ln -s unixenv/.tmux.bash.conf .tmux.conf
```

#### use Zsh on Tmux

```bash
ln -s unixenv/.tmux.zsh.conf .tmux.conf
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

