# Use an official Nginx runtime as a parent image
FROM nginx:alpine

# Remove default index.html file provided by Nginx
RUN rm /usr/share/nginx/html/index.html

# Copy the HTML file into the container at the root of the Nginx web server
COPY AiMarkmap.html /usr/share/nginx/html/index.html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Set the default command to run nginx with our custom configuration
CMD ["nginx", "-g", "daemon off;"]
