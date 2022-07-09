echo "1. Construir o app -  Versão Green:"
docker build -t fabiocaettano74/web-nginx:green .

echo "2. Enviar o app para o Docker Hub:"
docker push fabiocaettano74/web-nginx:green

echo "3. Deletar container se ele existir:"
docker rm -f web-nginx-green

echo "4. Executar o container em background"
docker run --name web-nginx-green -d -p 8080:80 fabiocaettano74/web-nginx:green