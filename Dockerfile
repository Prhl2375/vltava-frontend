# Base image
FROM node:18-slim

# Set working directory
WORKDIR /app

# Copy package files (if package-lock.json doesn't exist, it will just copy package.json)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose port 3000
EXPOSE 3000

# Start the production server
CMD npm run build && npm start

#or start dev
#CMD["npm", "run", "dev"]
