FROM node:18-alpine
WORKDIR /usr/src/app

# Copy and install dependencies
COPY package*.json ./
RUN npm ci --only=production

# Copy the rest of your source (including public/)
COPY . .

EXPOSE 8080
CMD ["npm", "start"]
