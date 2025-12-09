FROM wordpress:php8.2-apache

# Instalar algunas herramientas útiles dentro de la imagen (opcional)
RUN apt-get update && apt-get install -y \
    vim \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Copiar contenido personalizado (plugins/temas) si quieres
# COPY wp-content /var/www/html/wp-content

# Exponer el puerto por defecto de Apache
EXPOSE 80
