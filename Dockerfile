FROM node:16.16.0 as base

# Create app directory
WORKDIR /usr/src/app

ENTRYPOINT ["sh","/usr/src/app/init.sh"]
