# Usa una imagen ligera de nginx
FROM nginx:alpine

# Elimina los archivos HTML por defecto de nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia los archivos de tu sitio web (HTML, assets, etc.) al contenedor
COPY . /usr/share/nginx/html

# Expone el puerto 80 para que el servidor nginx sea accesible
EXPOSE 80
