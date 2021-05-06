FROM almir/webhook
RUN apk --no-cache add curl
RUN mkdir -p /var/webhook
RUN mkdir -p /var/scripts
COPY hooks.json /etc/webhook/hooks.json
COPY dispatch.sh /var/scripts/dispatch.sh
CMD ["-verbose"] 
