
npm -v

if [ $? -ne 0 ]; then

    if [ "$(uname)" == "Darwin" ]; then
        brew update
        brew install node
    elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then

        if [ -f /etc/redhat-release ]; then
            sudo yum update
            curl --silent --location https://rpm.nodesource.com/setup_10.x | sudo bash -
            sudo yum -y install nodejs
        fi

        if [ -f /etc/lsb-release ]; then
            sudo apt-get update
            sudo apt-get install nodejs
            sudo apt-get install npm
        fi

    fi

fi

