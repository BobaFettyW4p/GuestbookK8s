FROM nginx:alpine
ENV PYTHONUNBUFFERED=1
COPY ./FlaskApp/ ./app
RUN apk add nginx \
    &&apk add --update --no-cache python3 \
    && ln -sf python3 /usr/bin/python \
    && python3 -m ensurepip \
    && pip3 install --no-cache --upgrade pip setuptools \
    && pip3 install flask gunicorn
WORKDIR /app
CMD [ "gunicorn", "-b", "0.0.0.0:5000", "wsgi:app" ]
