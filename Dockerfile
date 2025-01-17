# Use the official WordPress image as the base image
FROM wordpress:latest

# Set environment variables for WordPress setup (optional)
ENV WORDPRESS_DB_HOST=db \
    WORDPRESS_DB_USER=exampleuser \
    WORDPRESS_DB_PASSWORD=examplepassword \
    WORDPRESS_DB_NAME=exampledb

# Copy custom themes, plugins, or configurations if needed
# COPY ./themes /var/www/html/wp-content/themes
# COPY ./plugins /var/www/html/wp-content/plugins
# COPY ./uploads /var/www/html/wp-content/uploads

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start WordPress (inherited from the base image)
CMD ["apache2-foreground"]

