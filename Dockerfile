FROM python:3.7.7-alpine3.11

COPY /app /simpleweb/app
COPY requirements.txt /simpleweb/app/requirements.txt
WORKDIR /simpleweb

RUN set -e;\
	apk add --no-cache --virtual .build-deps \
		gcc~=9 \
		libc-dev~=0.7.2 \
		linux-headers~=4.19.36 \
	; \
    pip install -r app/requirements.txt;\
    apk del .build-deps;\
    rm app/requirements.txt;\
    rm -rf /app/__pycache__

ENTRYPOINT ["uwsgi","--socket","0.0.0.0:5000","--protocol=http","-w","app.wsgi:app"]
