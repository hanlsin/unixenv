#!/usr/bin/env bash

unameOut="$(uname -m)"
case "${unameOut}" in
    x86_*)     UNIXENV_CPU_ARCH=x86;;
    arm64)     UNIXENV_CPU_ARCH=arm64;;
    *)         UNIXENV_CPU_ARCH="UNKNOWN:${unameOut}"
esac

echo "* CPU: ${UNIXENV_CPU_ARCH}"
