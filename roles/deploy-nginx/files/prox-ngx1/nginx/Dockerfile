FROM nginx:1.15
COPY conf/tz-to-jst.sh /etc/
COPY conf/nginx.conf /etc/nginx/nginx.conf
RUN /bin/sh /etc/tz-to-jst.sh
