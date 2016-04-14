FROM ubuntu:15.10
RUN apt-get update && apt-get install -y cron && rm -rf /var/lib/apt/lists/*
ONBUILD COPY crontab /etc/cron.d/crontab
RUN touch /var/log/cron.log
CMD cron && tail -f /var/log/cron.log
