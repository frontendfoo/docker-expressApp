FROM node:13.8.0-alpine
WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH
COPY . /app
RUN npm ci
EXPOSE 80
CMD [ "npm", "run", "start" ]
