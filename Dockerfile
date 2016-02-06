FROM karlgrz/alpine-hugo
EXPOSE 8003

ADD site /site
WORKDIR /site

RUN rm -rf /site/public && hugo

CMD ["hugo", "server", "--bind=0.0.0.0", "--disableLiveReload=true", "--appendPort=false", "--port=8003", "--baseURL=https://stickfigureninjas.com/"]
