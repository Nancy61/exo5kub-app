# **DESCRIPTION DU PROJET**
## **Résumé:**
### <p>Ce projet est un exemple de déploiement d'une application node.js via kubernetes.<br></p>

<p><br></p>

### **Pré-requis:**
<p>-docker desktop<br>
-kubernetes<br>
-dockerhub image: nancylence/exo5-kub:latest<br></p>

<p><br></p>

### **Comment j'ai envoyé l'image sur dockerhub:**
```bash
    docker build -t exo5-kub . 
    docker tag exo5-kub nancylence/exo5-kub
    docker push nancylence/exo5-kub
```
<p><br></p>

### **Comment j'ai push sur Git:**
<p>1-Créer un nouveau repo public sur mon git<br>
2-Ensuite j'ai exécuté les commandes suivantes sur mon terminal:</p>

```bash
    git init
    git add .
    git commit -m "description"
    git remote add origin https://github.com/Nancy61/exo5kub-app.git
    git push -f origin main 
```

### **Comment déployer l'application:**
<p>1-Connectez-vous sur votre terminal en tant qu'administrateur.<br>
2-Saisissez les commandes suivantes:</p>

```bash
    kubectl get all 
    kubectl apply -f .\resource-files\service.yml,.\resource-files\deployment.yml
    kubectl get svc
    minikube service mon-site-exo3-service
    kubectl get pods
```

### **NB:**
Si vous avez déjà déployé un site qui écoute sur le port 8080, pensez à le supprimer avant de déployer cette application avec la commande:

```bash
    - kubectl delete svc example-deployment
```