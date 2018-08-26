FROM bitnami/nginx
COPY dist/angular-tour-of-heroes/* /app/
EXPOSE 8080