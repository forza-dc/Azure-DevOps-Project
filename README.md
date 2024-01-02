# Investment Advisor Website on Kubernetes

This is an excellent project to practice deploying a high-quality Investment Advisor Website using a Kubernetes cluster on the Azure cloud platform. 

![Financial Advisory Site](Financial-Advisory-Website.png)

The website is built based on a template obtained from Themeforest and is designed to provide financial advisory services. The goal here is not on web design or web development, but to deploy an app or webpage from a development team, by provisioning infrastructure on Azure Cloud. 

The deployment is orchestrated using Azure Kubernetes Service (AKS), ensuring high availability, scalability, and efficient management of containerized applications.

## Project Structure

The project directory includes the following key components:

- `Investment Advisor Website`: Contains the web template files obtained from Themeforest.
- `aks-infra-template.json`: ARM template for creating Azure Kubernetes Service (AKS) infrastructure.
- `backend-infra-template.json`: ARM template for creating backend infrastructure.
- `deployment.yaml` and `service.yaml`: Kubernetes manifests for deploying the Investment Advisor Website on the AKS cluster.
- `azure-commands.sh`: Bash script with Azure CLI commands for various tasks.
- `deploy.sh`: Bash script for deploying the AKS infrastructure and the web application.

## Deployment Process

### 1. AKS Infrastructure Deployment

Before deploying the website, create the AKS cluster using the following command:

```bash
az group deployment create --resource-group <AKS-Resource-Group> --template-file aks-infra-template.json
```
### 2. Backend Infrastructure Deployment
Deploy the backend infrastructure using the following command:

```
bash
az group deployment create --resource-group <Backend-Infra-Resource-Group> --template-file backend-infra-template.json
```

### 3. Deploy Web Application to AKS
Run the deployment script to apply the Kubernetes manifests and deploy the web application:

```
bash
./deploy.sh
```

### 4. Verify Deployment
Once the deployment is complete, verify the status and access the Investment Advisor Website on the AKS cluster.

Web Template Details
The Investment Advisor Website template includes the following key files:

screenshots/: Directory containing screenshots or images related to the website.
templates/: Directory containing HTML, CSS, and other assets for the website.
help.html: Help documentation for users.
manifest.json: Configuration file for the website.

Additional Information
For troubleshooting or further details, refer to the logs in the Azure Portal or use the following command to tail the logs:

```
bash
az webapp log tail --name <Your-Web-App-Name> --resource-group <Your-Resource-Group>
Feel free to customize and enhance the project based on your specific requirements.
```