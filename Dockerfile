FROM node:10

RUN /bin/bash -c 'apt-get update'
RUN /bin/bash -c 'apt-get install -y unzip xvfb libxi6 libgconf-2-4 curl vim'
RUN /bin/bash -c 'wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb'
RUN /bin/bash -c 'curl -sS -o - https://dl.google.com/linux/linux_signing_key.pub | apt-key add -'
RUN /bin/bash -c 'apt install -y ./google-chrome-stable_current_amd64.deb'
RUN /bin/bash -c 'apt-get install -y google-chrome-stable xvfb'
RUN /bin/bash -c 'wget https://chromedriver.storage.googleapis.com/2.41/chromedriver_linux64.zip'
RUN /bin/bash -c 'unzip chromedriver_linux64.zip'
RUN /bin/bash -c 'mv chromedriver /usr/bin/chromedriver'
RUN /bin/bash -c 'curl --silent -o- https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash'
ENV NODE_VERSION 10
RUN /bin/bash -c 'source ~/.bashrc && source $NVM_DIR/nvm.sh && nvm alias default $NODE_VERSION && nvm use default'
