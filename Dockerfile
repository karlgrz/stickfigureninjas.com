FROM karlgrz/ubuntu-14.04-base-go
EXPOSE 8003

ADD site /srv
WORKDIR /srv

RUN rm -rf /srv/public && hugo

CMD ["hugo", "server", "--bind=0.0.0.0", "--disableLiveReload=true", "--appendPort=false", "--port=8003", "--baseURL=https://stickfigureninjas.com/"]
