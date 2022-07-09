echo "Construir o app -  Versão Green:"
docker build -t fabiocaettano74/web-nginx:green .

echo "Enviar o app para o Docker Hub:"
docker push fabiocaettano74/web-nginx:green