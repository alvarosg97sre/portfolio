# Utilizar la imagen oficial de nginx
FROM nginx:alpine

# Copiar los archivos del proyecto al directorio que sirve nginx
COPY . /usr/share/nginx/html

# Exponer el puerto 80
EXPOSE 80

# Iniciar nginx
CMD ["nginx", "-g", "daemon off;"]
