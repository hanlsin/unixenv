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

