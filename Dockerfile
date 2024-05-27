FROM node:20-alpine

LABEL maintainer="Htet Nanda Hein"
LABEL description="Containerized the nextjs app"

#Set the working directory
WORKDIR /app

#Copy depedencies files into the image
COPY package*.json ./

#Install depedencies 
RUN npm install 

COPY . ./

#Build next js app
RUN npm run build

#EXPOSE the port
EXPOSE 3000

#EXECUTE the container
CMD ["npm", "start"]

