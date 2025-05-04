FROM node:18-alpine

WORKDIR /usr/src/app

# Install production deps
COPY package.json ./
RUN npm ci --only=production

# Copy all source (including public/)
COPY . .

# Expose and start
EXPOSE 8080
CMD ["npm", "start"]
