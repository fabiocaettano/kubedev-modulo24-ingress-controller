echo "1. Construir a imagem do app"
docker build -t fabiocaettano74/web-nginx:blue .

echo "3. Criar a tag para versão latest:"
docker tag fabiocaettano74/web-nginx:blue fabiocaettano74/web-nginx:latest

echo "3. Realizar o push para o Docker Hub"
docker push fabiocaettano74/web-nginx:blue
docker push fabiocaettano74/web-nginx:latest

echo "4. Deletar container se ele existir:"
docker rm -f web-nginx-white
docker rm -f web-nginx-green
docker rm -f web-nginx-blue

echo "5. Executar o container em background"
docker run --name web-nginx-blue -d -p 8080:80 fabiocaettano74/web-nginx:blue