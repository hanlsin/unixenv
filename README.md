# unixenv

This is a repository to setup a terminal environment easily on UNIX-like OS: such as Ubuntu, Mac, etc.

## Support Environments

- shll: bash | zsh
- vim
- tmux

## How to use?

### Clone the repository

```bash
git clone https://github.com/hanlsin/unixenv.git ~/.unixenv
```

or clone this repository and set `UNIXENV_HOME=<where_the_repository_path_is>`.

### Setup profiles

```bash
~/.unixenv/setup.sh
```

### Create symbolic links

```bash
ln -s ~/.unixenv/unixenv_vimrc ~/.vimrc
ln -s ~/.unixenv/p10k.zsh ~/.p10k.zsh
touch ~/.local_env
```

There is a new env file to prevent uploading critical inforation on github accidently.

You can insert any aliases or variables in `~/.local_profile`, and it will be safe from accidental uploading.

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

If it's not working, please re-install `vim`.

#### Mac

```bash
brew install vim
```

#### Ubuntu

```bash
sudo apt install vim
```

### Use Zsh

### Install Zsh

#### Mac

```bash
brew install zsh
```

#### Ubuntu

```bash
sudo apt install zsh
```

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

##### Setup font

I recommend to install the `Meslo Nerd Font` font via

- [Powerlevel10k](https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k)
- [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts)

#### Setup personal envs

```bash
vi ~/.zshrc
```

Input the below in the `.zshrc` file.

```
[[ ! -f ~/.unixenv/.unixenv_profile ]] || ~/.unixenv/.unixenv_profile
```

#### Use Zsh on Tmux

```bash
ln -s ~/.unixenv/tmux.zsh.conf ~/.tmux.conf
```

### Use Bash

#### Use Bash on Tmux

```bash
ln -s ~/.unixenv/tmux.bash.conf ~/.tmux.conf
```

## Prepare and Setup Tmux

### Prepare [Tmux Plugin Manager (tpm)](https://github.com/tmux-plugins/tpm)

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
