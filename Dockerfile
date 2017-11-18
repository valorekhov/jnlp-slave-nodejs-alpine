FROM jenkinsci/jnlp-slave:3.14-1-alpine
LABEL author="Val Orekhov <vorekhov@withum.com>"

USER root

#RUN echo "===> Installing sudo"
#RUN apk --update --no-cache add sudo git curl              
#RUN echo "===> Adding NodeJS..." 
RUN apk --update --no-cache add 'nodejs<6.11.5' 'nodejs-npm<6.11.5' 

#Because yarn package in the repo is currently 0.x
ENV PATH $HOME/.yarn/bin:$PATH
RUN apk --update --no-cache add curl binutils tar \
  && rm -rf /var/cache/apk/* \
  && touch ~/.profile \
  && curl -o- -L https://yarnpkg.com/install.sh | bash \
  && apk del tar binutils

USER jenkins