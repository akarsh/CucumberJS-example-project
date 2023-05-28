FROM node:16.16.0 as base

# Create app directory
WORKDIR /usr/src/app

FROM base as install
CMD ["npm", "install"]

FROM base as test
CMD ["npm", "test"]
