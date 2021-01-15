# Chapter II: Kubernetes

## Prerequisites

* [microk8s](https://microk8s.io/docs)
* [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)

## Commands

```bash
kubectl apply -f pod.yml
```

```bash
kubectl get pods
```

```bash
kubectl delete pods app
```

```bash
kubectl apply -f service.yml
```

```bash
kubectl get services
```

```bash
curl -s http://microk8s:30080 | json_pp
```

```bash
kubectl apply -f deployment.yml
```

```bash
kubectl get deployments
```

```bash
kubectl scale --replicas=10 deployment app-deployment
```