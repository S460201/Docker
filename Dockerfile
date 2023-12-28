# Using an official nodejs image for base OS
FROM node:14

# working directory
WORKDIR /usr/src/app

# Copying package.json and package-lock.json to the working directory
COPY package*.json ./

# Creating  directory for persistent data
VOLUME /usr/src/app/uploads

# Installing app dependencies
RUN npm install

# Copying the application code to the container
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Define the command to run your app
CMD ["npm", "start"]
