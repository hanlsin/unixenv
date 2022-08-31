#!/usr/bin/env bash

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     UNIXENV_MACHINE=Linux;;
    Darwin*)    UNIXENV_MACHINE=Mac;;
    CYGWIN*)    UNIXENV_MACHINE=Cygwin;;
    MINGW*)     UNIXENV_MACHINE=MinGw;;
    *)          UNIXENV_MACHINE="UNKNOWN:${unameOut}"
esac

echo "* MACHINE: ${UNIXENV_MACHINE}"