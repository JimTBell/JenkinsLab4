# Use latest node
FROM node:latest

# Copy contents into image
COPY . .

# Install NPM
RUN apt-get update
RUN apt-get install -y npm
RUN npm install

# Expose the correct port
EXPOSE 5000

# Create an entrypointA
ENTRYPOINT ["node", "index.js"]
