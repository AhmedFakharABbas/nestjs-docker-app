# Use the official Node.js image as the base
FROM node:20.18.0 AS builder

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install all dependencies
RUN npm install 

# Copy the entire project
COPY . .

# Build the application
RUN npm run build

# Remove devDependencies after build to reduce image size
RUN npm prune --production

# Use a smaller base image for production
FROM node:20.18.0 AS runner

# Set working directory
WORKDIR /app

# Copy built files from the previous stage
COPY --from=builder /app/dist ./dist
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/package.json ./

# Expose application port
EXPOSE 3000

# Start the application
CMD ["node", "dist/main.js"]
