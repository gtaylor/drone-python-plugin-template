# {{ SHORT_DESCRIPTION }}
#
#     docker build --rm=true -t {{ ORG_OR_AUTHOR_USERNAME }}/{{ PLUGIN_NAME }} .

FROM gliderlabs/alpine:3.2
MAINTAINER {{ AUTHOR_NAME }} <{{ AUTHOR_EMAIL }}>

RUN apk-install python3
RUN mkdir -p /opt/drone
COPY requirements.txt /opt/drone/
WORKDIR /opt/drone
RUN pip3 install -r requirements.txt
COPY plugin /opt/drone/

ENTRYPOINT ["python3", "/opt/drone/plugin/main.py"]
