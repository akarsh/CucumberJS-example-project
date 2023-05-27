FROM node:16.16.0 as base

# Create app directory
WORKDIR /usr/src/app

# Bundle app source
COPY package.json package.json
COPY package-lock.json package-lock.json

FROM base as test
RUN npm ci
COPY . .
CMD ["npm", "run", "test"]
