# Use NGINX as base image
FROM nginx:alpine

# Copy the static files to NGINX's default serving directory
COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/

# Configure NGINX to serve the files
RUN chmod 644 /usr/share/nginx/html/index.html
RUN chmod 644 /usr/share/nginx/html/styles.css

# Expose port 80
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]