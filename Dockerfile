# setup an image 
FROM node:latest

# add a workdir to store the application
WORKDIR /usr/src/app

# copy packages
COPY package*.json ./

#install app dependencies
RUN npm install

# copy all files
COPY . .

# expose port
EXPOSE 3000

# run application
CMD ["node", "app.js"]