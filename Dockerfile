FROM node:latest
WORKDIR /user/src/app
COPY nodeapp/* /
RUN npm install
COPY . .
EXPOSE 3000
CMD [ "npm","start" ]
