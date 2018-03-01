FROM jenkinsci/jnlp-slave:3.16-1
LABEL author="Val Orekhov <vorekhov@withum.com>"

USER root

#RUN echo "===> Installing sudo"
#RUN apk --update --no-cache add sudo git curl              
#RUN echo "===> Adding NodeJS..."
#RUN apt-get update && apt-get -y upgrade 

#RUN apt-get update && apt-get install -y  \
#      curl  \
#      binutils \ 
#      tar \
#    && rm -rf /var/lib/apt/lists/*

#Because yarn package in the repo is currently 1.3 
#ENV PATH $HOME/.yarn/bin:$PATH
RUN touch ~/.profile \
  && curl -sL https://deb.nodesource.com/setup_8.x | bash - \
  && apt-get install nodejs \
  && curl -o- -L https://yarnpkg.com/install.sh | bash \
  && rm -rf /var/lib/apt/lists/*
  #&& apk del tar binutils

USER jenkins