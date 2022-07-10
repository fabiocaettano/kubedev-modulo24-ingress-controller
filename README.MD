1. Criar as aplicações nas versões white, green e blue.

O arquivo script.sh:
- conforme a versão alterar o background do arquivo index.html
- ira criar a imagem conforme o Dockerfile; 
- irá cria uma tag para versão latest.

Versão white:
``` git
cd app
git branch white
git checkout white
# alterar o background do arquivo index.html
. script.sh
git add .
git commit -m "versao white"
git push -u origin white
```

Repetir o processo para versão green e blue.

Objetivo é subir para o DockerHub três versões:

- fabiocaettano74/web-nginx:white
- fabiocaettano74/web-nginx:blue
- fabiocaettano74/web-nginx:green



2. Instalação ingress nginx:

- https://kubernetes.github.io/ingress-nginx/deploy/


Comando para instalar:

```
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.2.0/deploy/static/provider/do/deploy.yaml
```


3. Checar o namespace ingress-nginx:

```
kubectl get namespaces
```

4. Anota o EXTERNAL-IP para acessar externamente aplicação:

```
kubectl get all -n ingress-nginx
```

5. Configurar o DNS no provedor.

- fabiocaetanodev.com.br
- green.fabiocaetanodev.com.br
- blue.fabiocaetanodev.com.br


5. Aplicar o manifesto:

```
kubectl apply -f ./versao-02/deployment-white.yaml
kubectl apply -f ./versao-02/deployment-blue.yaml
kubectl apply -f ./versao-02/deployment-green.yaml
kubectl get all
```

6. Aplicar o manifesto do ingress:

``` 
kubectl apply -f ./versao-02/ingress.yaml
```

7. Get ingress, aguardar vincular o Extenal IP:

```
$ kubectl get ingress
```


 8. Testar os acessos:

-  http://fabiocaetanodev.com.br
-  http://blue.fabiocaetanodev.com.br
-  http://green.fabiocaetanodev.com.br
