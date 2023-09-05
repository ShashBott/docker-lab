# Use an official Nginx runtime as a parent image
FROM nginx:latest

# Set the working directory to /usr/share/nginx/html
WORKDIR /usr/share/nginx/html

# Copy the current directory contents into the container at /usr/share/nginx/html
COPY ./html /usr/share/nginx/html

# Expose port 83
EXPOSE 83

# Define the command to start Nginx
CMD ["nginx", "-g", "daemon off;"]

