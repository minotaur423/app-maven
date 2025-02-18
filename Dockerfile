FROM rockylinux:9-minimal AS build

RUN fallocate -l 10M /opt/1

RUN fallocate -l 10M /opt/2

RUN fallocate -l 5M /opt/jar

FROM alpine

COPY --from=build /opt/jar /jarfile.jar

