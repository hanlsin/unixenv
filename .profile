if [ -f ~/yp_profile/yp_profile ]; then
	. ~/yp_profile/yp_profile
fi

# build aergo on Mojave
export MACOSX_DEPLOYMENT_TARGET=10.14

export GOPATH=~/go

PIPENV_PS1='\"🐍 \[\033[01;34m\]\u@\h\[\033[00m\]:\[\033[01;32m\]\W\[\033[00m\]\[\033[01;31m\]\$(git branch 2> /dev/null | sed -e \"/^[^*]/d\" -e \"s/* \(.*\)/ (\1)/\")\[\033[00m\]$ \"'

alias github="cd $GOPATH/src/github.com"
alias aergo="cd $GOPATH/src/github.com/aergoio/aergo"
alias herapy="cd $GOPATH/src/github.com/aergoio/herapy;echo PS1=\"${PIPENV_PS1}\">.env;pipenv shell"
alias horde="cd $GOPATH/src/github.com/aergoio/horde;echo PS1=\"${PIPENV_PS1}\">.env;pipenv shell"
