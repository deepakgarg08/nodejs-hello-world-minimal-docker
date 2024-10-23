# Use the official Node.js image as a base image
FROM node:18

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the dependencies
RUN npm install --production

# Copy the rest of your application files to the container
COPY . .

# Expose the port your application runs on (e.g., 3000)
EXPOSE 3000

# Command to run your application
CMD ["node", "app.js"]
