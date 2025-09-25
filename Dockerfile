# Stage 1: Build skipped because dist/ already exists
FROM nginx:stable-alpine

# Set working directory
WORKDIR /usr/share/nginx/html

# Copy built React app
COPY dist/ .

# Expose port
EXPOSE 3000

CMD ["nginx", "-g", "daemon off;"]

