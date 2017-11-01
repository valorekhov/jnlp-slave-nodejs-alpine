FROM jenkinsci/jnlp-slave:3.10-1-alpine
LABEL author="Val Orekhov <vorekhov@withum.com>"

USER root

#RUN echo "===> Installing sudo"
#RUN apk --update --no-cache add sudo git curl              
#RUN echo "===> Adding NodeJS..." 
RUN apk --update --no-cache add 'nodejs<6.11.5' 'nodejs-npm<6.11.5'

USER jenkins