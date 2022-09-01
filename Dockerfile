# for https://github.com/jennifercarreno/socket-chat-example

FROM node:16

# creating app directory 
ADD . /app
WORKDIR /app

# installing app dependencies 
COPY package.json ./

RUN npm install
COPY . .
EXPOSE 8080

CMD [ "node", "index.js" ]
