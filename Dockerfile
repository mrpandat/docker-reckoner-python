FROM dtzar/helm-kubectl:3.10.0

RUN apk add --no-cache python3 py3-pip \
    && pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir reckoner \
    && reckoner version

WORKDIR /config

CMD bash
