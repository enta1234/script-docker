# FROM 10.30.23.5:8083/ctad-node:8.12-alpine
FROM entronica/entro-node

ARG CONTAINER_PORT
ARG PM2_FILE
ARG APP_NAME

ENV PM2_FILE ${PM2_FILE}

ADD package.json .
RUN npm install

WORKDIR /app/${APP_NAME}
ADD . /app/${APP_NAME}

EXPOSE ${CONTAINER_PORT}

# CMD ["pm2", "start", "pm2-test.json"]
CMD pm2 start ${PM2_FILE} --no-daemon
# CMD pm2 start pm2-test.json --no-daemon