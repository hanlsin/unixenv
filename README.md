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
git clone https://github.com/hanlsin/unixenv.git ~/.unixenv
```

### Create symbolic links

```bash
ln -s ~/.unixenv/bash_aliases ~/.bash_aliases
ln -s ~/.unixenv/yp_profile ~/.yp_profile
ln -s ~/.unixenv/yp_env_vars ~/.yp_env_vars
ln -s ~/.unixenv/yp_vimrc ~/.yp_vimrc
ln -s ~/.unixenv/vimrc ~/.vimrc
ln -s ~/.unixenv/p10k.zsh ~/.p10k.zsh
```

## Use [screenFetch](https://github.com/KittyKatt/screenFetch)

To disply Bash information.

### [Install](https://github.com/KittyKatt/screenFetch/wiki/Installation)

#### Mac

```bash
brew install screenfetch
```

#### Ubuntu

```bash
sudo apt install screenfetch
```

### Set in bash

```bash
echo "screenfetch" > ~/.bashrc
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

* [Powerlevel10k](https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k)
* [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts)


#### Setup personal envs

```bash
vi ~/.zshrc
```

Input the below in the `.zshrc` file.

```
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
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

## Prepare and Setup [Conky](https://github.com/brndnmtthws/conky) for Linux GUI

```bash
sudo apt-get install conky-all
ln -s ~/.unixenv/conkyrc ~/.conkyrc
```

~~And, launch `conky` at session start~~(not working on Ubuntu)

```bash
mkdir -p ~/.config/autostart
ln -s ~/.unixenv/conky.desktop ~/.config/autostart/conky.desktop
```

