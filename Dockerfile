# Utilizar la imagen oficial de nginx
FROM nginx:alpine

# Crear el directorio .well-known/acme-challenge
RUN mkdir -p /usr/share/nginx/html/.well-known/acme-challenge

# Copiar todos los archivos del proyecto al directorio que sirve nginx
COPY . /usr/share/nginx/html/

# Exponer el puerto 80
EXPOSE 80

# Iniciar nginx
CMD ["nginx", "-g", "daemon off;"]

