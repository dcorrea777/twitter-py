FROM python:3.8-alpine

ENV PATH="/home/python/.local/bin:${PATH}"
ENV PATH="/home/python/bin:${PATH}"
ENV PYTHONPATH="/home/python/app"

RUN addgroup -S python && adduser -S python -G python

WORKDIR /home/python/app

ADD . /home/python/app

RUN apk update && apk update \
    && apk add curl unzip less groff

USER python

RUN cd /home/python \
    && curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip" \
    && unzip awscli-bundle.zip \
    && ./awscli-bundle/install -b ~/bin/aws

RUN pip install -r requirements.txt

CMD ["python", "users_by_followers.py"]