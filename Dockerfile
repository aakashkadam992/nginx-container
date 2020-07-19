FROM nginx:latest
LABEL imageserver=v1.1
ADD palace.jpg /usr/share/nginx/html/palace.jpg
ADD index.html /usr/share/nginx/html/index.html
WORKDIR /etc/nginx
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
