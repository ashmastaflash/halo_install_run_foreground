FROM amazonlinux:2018.03

RUN mkdir /app

COPY halo_check.sh /app/
