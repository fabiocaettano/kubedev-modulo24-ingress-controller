echo "Construir a imagem do app"
docker build -t fabiocaettano74/web-nginx:blue .
echo "Realizar o push para o Docker Hub"
docker push fabiocaettano74/web-nginx:blue