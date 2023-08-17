#Build node image from Node Docker Hub
FROM node:18

#Identify working directory
WORKDIR /usr/src/app

#Copy package
COPY package*.json ./

#Install rpm packages from package.json
RUN npm install

#Copy over app to app folder
COPY . .

#Expose server at port ( accessible outside of container)
EXPOSE 8080

#Start app 
CMD ["node", "index.js"]