FROM jenkinsci/jnlp-slave:3.27-1-alpine
LABEL author="Val Orekhov <vorekhov@withum.com>"

USER root

#RUN echo "===> Installing sudo"
#RUN apk --update --no-cache add sudo git curl              
#RUN echo "===> Adding NodeJS..." 
RUN apk --update --no-cache add 'nodejs=8.14.0-r0' 'nodejs-npm=8.14.0-r0' 

#Because yarn package in the repo is currently 1.3 
#ENV PATH $HOME/.yarn/bin:$PATH
RUN apk --update --no-cache add curl binutils tar \
  && rm -rf /var/cache/apk/* \
  && touch ~/.profile \
  && curl -o- -L https://yarnpkg.com/install.sh | bash \
  && apk del tar binutils

USER jenkins