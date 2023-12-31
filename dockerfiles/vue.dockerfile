FROM node:20-alpine

RUN mkdir -p /var/www/html

WORKDIR /var/www/html

EXPOSE 8081

# RUN npm install
CMD ["./node_modules/.bin/vite", "--host", "0.0.0.0", "--port", "8081"]