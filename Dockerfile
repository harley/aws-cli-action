FROM python:3-alpine
RUN pip3 --no-cache-dir install awscli
ENTRYPOINT ["aws"]
