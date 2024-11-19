# Base image
FROM node:18-slim

# Set working directory
WORKDIR /app

# Copy the rest of the application code
COPY . .

# Expose port 3000
EXPOSE 3000

# Start the production server
CMD npm install && npm run build && npm start

#or start dev
#CMD npm install && npm run dev
