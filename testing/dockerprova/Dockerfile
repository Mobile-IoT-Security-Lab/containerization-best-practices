FROM nginx:1.10.1-alpine

COPY src/html /usr/share/nginx/html
## -- Best practice 6: exposing non-priviledge port -- ##
EXPOSE 8080
## --------------------------------------------------- ##

# Run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
