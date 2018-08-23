FROM 172.255.4.100:5000/nginx:v1.0
USER root
ENV HOSTNAME nginx
COPY default.conf /etc/nginx/conf.d/
EXPOSE 80
EXPOSE 81
CMD ["nginx","-g","daemon off;"]
