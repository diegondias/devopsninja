	# Setar a imagem do nginx
FROM nginx:1.29-alpine

	# Autor/Mantenedor
LABEL maintainer="Jonathan Baraldi"

	# Copiar configurações customizadas do diretório atual
COPY nginx.conf /etc/nginx/nginx.conf

COPY certificado/certificado.crt  /etc/ssl/certificado.crt
COPY certificado/certificado.key  /etc/ssl/certificado.key
