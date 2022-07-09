1. Instalação ingress nginx:
https://kubernetes.github.io/ingress-nginx/deploy/

Comando para instalar:
```
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.2.0/deploy/static/provider/do/deploy.yaml
```

2. Checar o namespace ingress-nginx:
```
kubectl get namespaces
```

3. Anota o EXTERNAL-IP para acessar externamente aplicação:
```
kubectl get all -n ingress-nginx
```

4. Configurar o DNS no provedor.

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

7. Get ingress
```
$ kubectl get ingress
```


 