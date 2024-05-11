### STAGE 1: Build ###
FROM node:16-alpine AS build
WORKDIR /usr/src/app
COPY package.json ./
RUN npm install
COPY . .
# Build your Angular project for production
RUN npm run build -- --prod  

### STAGE 2: Run ###
FROM nginx:1.17.1-alpine
 # The Nginx config you shared
COPY default.conf /etc/nginx/conf.d/default.conf  
# Copy the build output to Nginx
COPY --from=build /usr/src/app/dist/frontend /usr/share/nginx/html  
EXPOSE 80
