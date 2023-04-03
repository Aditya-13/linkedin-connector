# Set the base image to Node.js
FROM node:16-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the project files to the container
COPY . .

# Expose port 8000
EXPOSE 8000

# Start the Node.js application
CMD ["npm", "start"]
