"1. Criar a image da aplicação, Versão White"
docker build -t fabiocaettano74/web-nginx:white .

"2. Criar a tag para versão latest:"
docker tag fabiocaettano74/web-nginx:white fabiocaettano74/web-nginx:latest

"3. Enviar a image para o docker HUB:"
docker push fabiocaettano74/web-nginx:white
docker push fabiocaettano74/web-nginx:latest

"4. Deletar container se ele existir:"
docker rm -f web-nginx-white
docker rm -f web-nginx-blue
docker rm -f web-nginx-green

"5. Executar o container em background"
docker run --name web-nginx-white -d -p 8080:80 fabiocaettano74/web-nginx:white