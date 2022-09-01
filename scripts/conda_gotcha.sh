#!/usr/bin/env bash

[[ -z "${BASE_DIR}" ]] && BASE_DIR=`git rev-parse --show-toplevel`
[[ -z "${SCRIPT_DIR}" ]] && SCRIPT_DIR="${BASE_DIR}/scripts"

# check machine info
[[ -z "${MACHINE}" ]] && MACHINE=$(source ${SCRIPT_DIR}/os_gotcha.sh)

# check machine architecture info
[[ -z "${MACHINE_ARCH}" ]] && MACHINE_ARCH=$(source ${SCRIPT_DIR}/os_arch_gotcha.sh)

# check conda home path
if [[ -z "${CONDA_HOME}" ]]; then
    export CONDA_HOME=${HOME}/opt/miniconda3
    export CONDA_EXEC=${CONDA_HOME}/condabin/conda
fi
[[ -z "${CONDA_HOME}" ]] && export CONDA_HOME=${HOME}/miniconda3
[[ -z "${CONDA_HOME}" ]] && export CONDA_HOME=${HOME}/bin/miniconda3

# check conda binary
[[ -z "${CONDA_EXEC}" ]] && export CONDA_EXEC=${CONDA_HOME}/bin/conda
${CONDA_EXEC} > /dev/null
if [ "$?" -eq 127 ]; then
    echo "Please install conda first."
    exit 127
fi

echo "* CONDA HOME: ${CONDA_HOME}"
echo "* CONDA EXEC: ${CONDA_EXEC}"
