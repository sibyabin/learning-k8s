#!/bin/bash
set -e

type=$(uname -m)
echo "Type is '${type}'"

if [ "${type}" = "aarch64" ]
then 
    command='curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/arm64/kubectl"'
    echo "Going to use the command '${command}'"
    eval ${command}
    $(chmod +x kubectl) && $(mkdir -p ~/.local/bin) && $(mv ./kubectl ~/.local/bin/kubectl)
    if [ $? -eq 0 ]
    then
        echo "Installation successful"
	echo "$(kubectl version --client --output=yaml)"
    else
        echo "Unable to proceed with installation. Please refer https://kubernetes.io/docs/tasks/tools/ "
    fi
else 
    echo "Unable to proceed with installation. Please refer https://kubernetes.io/docs/tasks/tools/ "
    exit 1
fi
exit 0