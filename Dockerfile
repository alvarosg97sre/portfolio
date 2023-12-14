# Utilizar la imagen oficial de nginx
FROM nginx:alpine

# Copiar todos los archivos del proyecto al directorio que sirve nginx
COPY . /usr/share/nginx/html/

# Excluir el directorio .well-known/acme-challenge de la copia
COPY .well-known/acme-challenge/ /usr/share/nginx/html/.well-known/acme-challenge/

# Exponer el puerto 80
EXPOSE 80

# Iniciar nginx
CMD ["nginx", "-g", "daemon off;"]

