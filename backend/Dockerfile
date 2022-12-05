FROM node:16

COPY . .

RUN ["npm", "install"]

RUN ["tsc"]

EXPOSE 3000

CMD ["node", "./dist/index.js"]