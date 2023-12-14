# Utilizar la imagen oficial de nginx
FROM nginx:alpine

# Copiar los archivos del proyecto (excepto el directorio .well-known/acme-challenge) al directorio que sirve nginx
COPY --exclude=.well-known/acme-challenge/ . /usr/share/nginx/html

# Crear el directorio .well-known/acme-challenge
RUN mkdir -p /usr/share/nginx/html/.well-known/acme-challenge

# Exponer el puerto 80
EXPOSE 80

# Iniciar nginx
CMD ["nginx", "-g", "daemon off;"]

