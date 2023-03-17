# Use latest node
FROM node:14.16-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the dependancies 
COPY  package.json  .

# Run the command to install dependancies
#RUN apt-get update
#RUN apt-get install -y npm
RUN npm install

# Copy all the files
COPY index.js .

# Expose the correct port
EXPOSE 5000

# Create an entrypointA
CMD ["node", "index.js"]
