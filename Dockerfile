FROM node:12

ENV REACT_APP_BASE_URL=http://localhost:5000

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm","start"]