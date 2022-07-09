1. Criar o Dockerfile

2. Criar a versão white
No arquivo index.html o background deve ser white.
$ docker build -t fabiocaettano74/web-nginx:white .
$ docker tag fabiocaettano74/web-nginx:white fabiocaettano74/web-nginx:latest
$ docker push fabiocaettano74/web-nginx:white
$ docker push fabiocaettano74/web-nginx:latest

3. Criar a versão blue
No arquivo index.html o background deve ser blue.
$ docker build -t fabiocaettano74/web-nginx:blue .
$ docker push fabiocaettano74/web-nginx:blue

4. Criar a versão green
No arquivo index.html o background deve ser green.
$ docker build -t fabiocaettano74/web-nginx:green .
$ docker push fabiocaettano74/web-nginx:green
