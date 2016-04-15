FROM ubuntu:15.10
RUN apt-get update && apt-get install -y cron && rm -rf /var/lib/apt/lists/*
CMD ["date"]
ENTRYPOINT ["/entrypoint.sh"]
COPY /entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENV CRON_SCHEDULE "* * * * *"
ENV CRON_USER root
