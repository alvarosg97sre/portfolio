# Portafolio Web: HTML, CSS y JavaScript
-----------------------------------------

Este repositorio contiene mi portafolio web, una aplicación sencilla desarrollada con HTML, CSS y JavaScript. La aplicación se sirve utilizando un contenedor Docker basado en Nginx.

## Características
-------------------

- **Frontend Básico**: El portafolio consta de páginas HTML estáticas con estilos CSS y funcionalidades en JavaScript.
- **Servidor Nginx**: La aplicación se despliega en un contenedor Docker utilizando Nginx para servir el contenido.
- **CI/CD con GitHub Workflows**: El flujo de trabajo de GitHub se utiliza para automatizar el proceso de integración y despliegue continuo.

## Estructura del Proyecto
--------------------------

La estructura del proyecto es la siguiente:

- `index.html`: Página principal del portafolio.
- `css/`: Directorio para archivos CSS.
- `js/`: Directorio para scripts JavaScript.
- `Dockerfile`: Define el contenedor Docker para Nginx.
- `.github/workflows/`: Contiene los workflows de GitHub para CI/CD.

## Dockerfile
--------------------------

El `Dockerfile` utiliza la imagen base de Nginx y copia los archivos estáticos del portafolio al contenedor:

```dockerfile
FROM nginx:alpine
COPY . /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

```

## GitHub Workflow para CI/CD
-------------------------------

El flujo de trabajo de GitHub realiza los siguientes pasos:

1.  Build: Construye una imagen Docker a partir del Dockerfile.
2.  Push: Sube la imagen a Docker Hub con la etiqueta de la fecha del commit.
3.  Deploy: Despliega la nueva imagen en el entorno de producción.
