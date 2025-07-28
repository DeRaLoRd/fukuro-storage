FROM nginx:1.25-alpine
RUN rm /etc/nginx/conf.d/default.conf
COPY ./ /usr/share/nginx/html/
COPY docker/nginx-storage.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx","-g","daemon off;"]