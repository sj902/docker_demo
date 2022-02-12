FROM node:alpine

WORKDIR /usr/app 
COPY ./package.json ./

RUN npm install

COPY ./ ./

CMD [ "npm", "start" ]

# docker run -p 8080:8080 <image id>
# incoming port:container port 