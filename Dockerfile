FROM node:20
WORKDIR /app
RUN git clone https://github.com/Chonlasak66/endpoint-api.git /app
RUN git pull
RUN npm install
COPY ./server.key /app
COPY ./server.crt /app
EXPOSE 8500 8501
CMD ["node", "webreport-api-https"]