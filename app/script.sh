echo "1. Construir o app -  Versão Green:"
docker build -t fabiocaettano74/web-nginx:green .

echo "3. Criar a tag para versão latest:"
docker tag fabiocaettano74/web-nginx:green fabiocaettano74/web-nginx:latest


echo "4. Enviar o app para o Docker Hub:"
docker push fabiocaettano74/web-nginx:green

echo "5. Deletar container se ele existir:"
docker rm -f web-nginx-green
docker rm -f web-nginx-blue
docker rm -f web-nginx-white

echo "6. Executar o container em background"
docker run --name web-nginx-green -d -p 8080:80 fabiocaettano74/web-nginx:green