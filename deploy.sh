# Deploy AKS Infrastructure
az group deployment create --resource-group AKSResourceGroup --template-file aks-infra-template.json

# Deploy Backend Infrastructure
az group deployment create --resource-group BackendInfraResourceGroup --template-file backend-infra-template.json

# Apply Kubernetes Manifests
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
