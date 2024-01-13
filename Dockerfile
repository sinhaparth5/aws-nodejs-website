#Use an offcial Node.js runtime as a base image

FROM node:14

#Copy package.json and package-lock.json to the working directory
COPY package*.json ./

#Install application dependencies
RUN npm install

#Copy the application files to the working directory
COPY . .

#Expose the port that the app will run on
EXPOSE 3000

#Define the command to run your application
CMD["npm", "start"]
