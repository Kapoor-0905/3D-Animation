# Use the official Nginx image as the base image
FROM nginx:latest

# Set the working directory in the container
WORKDIR /usr/share/nginx/html

# Copy the HTML and CSS files to the container
COPY index.html .
COPY styles.css ./css/

# Optionally, you can copy other static assets (images, JS files, etc.) if your project requires them
# COPY images/ ./images/
# COPY js/ ./js/

# Expose port 80 to make the web server accessible outside the container
EXPOSE 80
