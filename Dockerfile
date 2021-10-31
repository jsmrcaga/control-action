FROM node:16-bullseye

ADD control.sh /control.sh

ENTRYPOINT ["/control.sh"]
