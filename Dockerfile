FROM postgres:9.3-alpine

RUN apk add --no-cache --virtual .build-deps \
      build-base \
      gcc \
      libc-dev \
      mariadb-dev \
      mariadb \
      python3-dev \
      libffi-dev && \
    apk add python3 && \
    pip3 install \
      psycopg2 \
      csvkit && \
    apk del .build-deps && \
    rm -rf /var/cache/apk/* && \
    rm -rf ~/.cache/

