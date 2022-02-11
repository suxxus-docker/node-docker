FROM node:17

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

# Your app binds to port 8080 so you'll use the EXPOSE instruction to have it mapped by the docker daemon:
EXPOSE 3000

CMD [ "npm", "start" ]

# FROM node:16-alpine
#
# # Create app directory
# RUN mkdir -p /usr/src/app
# WORKDIR /usr/src/app
#
# # Install dependencies
# COPY package.json .
# RUN npm install
#
# # Bundle app source
# COPY index.js ./
#
# # Exports
# EXPOSE 3000
# CMD [ "npm", "run", "start.dev" ]
