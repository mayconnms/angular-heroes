## Stage 1: Build Angular application ##
FROM node:9.6.1 as builder

COPY ./* /angular-heroes/

WORKDIR /angular-heroes

RUN npm install
RUN $(npm bin)/ng build

## Stage 2: Run nginx to serve application ##
FROM nginx

COPY --from=builder /angular-heroes/dist/* /usr/share/nginx/html/

EXPOSE 80
