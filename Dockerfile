FROM 172.255.4.100:5000/uwsgi:v1.0
USER root
ENV HOSTNAME uwsgi
EXPOSE 9090
COPY uwsgi9090.ini /etc/
COPY wsgi.py /demosite/
CMD uwsgi --ini /etc/uwsgi9090.ini && tail -f /dev/null
