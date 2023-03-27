#!/usr/bin/env bash

echo "Add comment by dev2"

# check unixenv home path
if [[ -z "${UNIXENV_HOME}" ]]; then
    UNIXENV_HOME=${HOME}/.unixenv
    _IS_UNIXENV_HOME_IN_RC="FALSE"
else
    _IS_UNIXENV_HOME_IN_RC="TRUE"
fi

echo "test 1111"
echo "test 2222"


# check the directory exists
if [ ! -d "${UNIXENV_HOME}" ]; then
    echo "Cannot find the UNIXENV_HOME data2."
    echo "Please follow the instruction first to setup properly:"
    echo ""
    echo "clone the git repository in a default directory"
    echo ""
    echo "    git clone git@github.com:hanlsin/unixenv.git"
    echo ""
    echo " or, set the environment variable UNIXENV_HOME"
    echo ""
    echo "    export UNIXENV_HOME=~/.unixenv"
    echo ""
    exit 1
fi 

UNIXENV_SCRIPTS_DIR="${UNIXENV_HOME}/scripts"

# call unixenv init script
source ${UNIXENV_SCRIPTS_DIR}/machine_gotcha.sh
source ${UNIXENV_SCRIPTS_DIR}/cpu_arch_gotcha.sh
source ${UNIXENV_SCRIPTS_DIR}/shell_gotcha.sh

if [[ ! -f "${UNIXENV_SHELL_RC_FILE}" ]]; then
    touch ${UNIXENV_SHELL_RC_FILE}
fi

if [[ "${_IS_UNIXENV_HOME_IN_RC}" == "FALSE" ]]; then
    echo "" >> ${UNIXENV_SHELL_RC_FILE}
    echo "# UNIXENV >>>--------------------------------------------------------" >> ${UNIXENV_SHELL_RC_FILE}
    echo "export UNIXENV_MACHINE=${UNIXENV_MACHINE}" >> ${UNIXENV_SHELL_RC_FILE}
    echo "export UNIXENV_CPU_ARCH=${UNIXENV_CPU_ARCH}" >> ${UNIXENV_SHELL_RC_FILE}
    echo "export UNIXENV_SHELL=${UNIXENV_SHELL}" >> ${UNIXENV_SHELL_RC_FILE}
    echo "export UNIXENV_HOME=${UNIXENV_HOME}" >> ${UNIXENV_SHELL_RC_FILE}
fi

# create unixenv aliases env
if [[ -z "${UNIXENV_PROFILE_PATH}" ]]; then
    UNIXENV_PROFILE_PATH="${UNIXENV_HOME}/unixenv_profile"
    echo "" >> ${UNIXENV_SHELL_RC_FILE}
    echo "# unixenv aliases" >> ${UNIXENV_SHELL_RC_FILE}
    echo "export UNIXENV_PROFILE_PATH=${UNIXENV_PROFILE_PATH}" >> ${UNIXENV_SHELL_RC_FILE}
    echo "[[ ! -f ${UNIXENV_PROFILE_PATH} ]] || source ${UNIXENV_PROFILE_PATH}" >> ${UNIXENV_SHELL_RC_FILE}
fi
echo "* UNIXENV_PROFILE_PATH: ${UNIXENV_PROFILE_PATH}"

if [[ "${_IS_UNIXENV_HOME_IN_RC}" == "FALSE" ]]; then
    echo "" >> ${UNIXENV_SHELL_RC_FILE}
    echo "# --------------------------------------------------------<<< UNIXENV" >> ${UNIXENV_SHELL_RC_FILE}
fi


echo ""
echo "Complete to setup UNIXENV!"
echo ""
echo "Please start a new terminal session or re-import your shell RC file:"
echo ""
echo "    source ${UNIXENV_SHELL_RC_FILE}"
echo ""
echo "Thank you."