"1. Criar a image da aplicação, Versão White"
docker build -t fabiocaettano74/web-nginx:white .

"2. Criar a tag para versão latest:"
docker tag fabiocaettano74/web-nginx:white fabiocaettano74/web-nginx:latest

"3. Enviar a image para o docker HUB:"
docker push fabiocaettano74/web-nginx:white
docker push fabiocaettano74/web-nginx:latest