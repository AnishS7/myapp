# Dockerfile
FROM node:18-alpine

# 1. Set working directory
WORKDIR /usr/src/app

# 2. Copy both package.json AND package-lock.json
COPY package*.json ./

# 3. Install production dependencies (uses the lock file)
RUN npm ci --only=production

# 4. Copy the rest of your source (including public/)
COPY . .

# 5. Expose port and start
EXPOSE 8080
CMD ["npm", "start"]
