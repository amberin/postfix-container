FROM alpine:latest
RUN apk update && apk --no-cache add ca-certificates postfix && update-ca-certificates
COPY ./run.sh /
RUN chmod +x /run.sh
EXPOSE 25
CMD ["/run.sh"]
