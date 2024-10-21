FROM node:20
WORKDIR /app
RUN git clone https://github.com/se-Rocket-Dev/Endpoint-api.git /app
RUN git pull
RUN npm install
COPY ./server.key /app
COPY ./server.crt /app
EXPOSE 8200 8201
CMD ["node", "webreport-api-https"]