FROM node:18
WORKDIR /app
RUN apt-get update && \
    apt-get install default-jre && \
    apt-get clean;
RUN apt-get install -y python
COPY ./package*.json ./
RUN npm install
COPY . .
EXPOSE 3001
CMD ["npm", "run", "start"]
