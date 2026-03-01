FROM nginx:alpine

COPY . /usr/share/nginx/html

# Change nginx to listen on port 8080 instead of 80
RUN sed -i 's/80/8080/g' /etc/nginx/conf.d/default.conf

EXPOSE 8080
