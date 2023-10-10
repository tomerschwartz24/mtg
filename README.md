## Simple Static website on top of minikube

### Building project :

1. clone repo
```
git clone https://github.com/tomerschwartz24/mtg.git
 ```

2. setup minikube docker before building
```
eval $(minikube -p minikube docker-env)
```

3. build webapp
```
docker build -t registry.k8s.io/mtg-nginx:1.0 .
```

4. Initalize infra
```
pulumi up -C pulumi-mtg
 ```

 5. Set up selfsigned cert and ingress 

```
sh Helper.sh
```
6. add entry to /etc/hosts
```
127.0.0.1	tomer-mtg
```
7 . start minikube tunnel
```
sudo minikube tunnel
```








