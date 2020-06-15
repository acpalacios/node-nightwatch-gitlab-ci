FROM node:8

RUN /bin/bash -c 'apt-get update'
RUN /bin/bash -c 'apt-get install -y unzip xvfb libxi6 libgconf-2-4'
RUN /bin/bash -c 'apt-get install default-jdk'
RUN /bin/bash -c 'wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb'
RUN /bin/bash -c 'curl -sS -o - https://dl.google.com/linux/linux_signing_key.pub | apt-key add -'
RUN /bin/bash -c 'apt install -y ./google-chrome-stable_current_amd64.deb'
RUN /bin/bash -c 'apt-get install -y google-chrome-stable xvfb'
RUN /bin/bash -c 'wget https://chromedriver.storage.googleapis.com/2.41/chromedriver_linux64.zip'
