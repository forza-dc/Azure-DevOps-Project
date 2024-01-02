# Log in to Azure
az login

# Create Azure Container Registry
az acr create --resource-group AKSResourceGroup --name your-container-registry --sku Basic

# Build and Push Docker Image
docker build -t your-container-registry.azurecr.io/web-app:latest .
docker push your-container-registry.azurecr.io/web-app:latest
