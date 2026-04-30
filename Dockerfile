# Step 1: Use an official Nginx image as the base
FROM nginx:alpine

# Step 2: Copy the 'dist' folder (created by Parcel) into the Nginx html directory
COPY dist/ /usr/share/nginx/html/

# Step 3: Expose port 80 to the outside world
EXPOSE 80

# Step 4: Start Nginx
CMD ["nginx", "-g", "daemon off;"]