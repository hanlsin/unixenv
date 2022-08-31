#!/usr/bin/env bash

case $SHELL in
    */zsh)
        UNIXENV_SHELL="ZSH"
        UNIXENV_SHELL_RC_FILE="${HOME}/.zshrc"
        ;;
    */bash)
        UNIXENV_SHELL="BASH"
        UNIXENV_SHELL_RC_FILE="~/.bashrc"
        ;;
    *)
        UNIXENV_SHELL="UNKOWN_SH"
        UNIXENV_SHELL_RC_FILE=""
esac

echo "* SHELL: ${UNIXENV_SHELL}"
echo "* SHELL_RC_File: ${UNIXENV_SHELL_RC_FILE}"