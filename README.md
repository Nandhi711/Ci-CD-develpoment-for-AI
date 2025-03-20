
# Project Title

This project focuses on deploying a Large Language Model (LLM)-based application using Kubernetes on Azure Kubernetes Service (AKS). The deployment follows a robust CI/CD pipeline with GitHub Actions and Terraform for infrastructure provisioning. Additionally, monitoring is implemented using Prometheus and Grafana to ensure system observability.


## Features

- LLM-based API: Provides AI-generated responses.
- Containerized Application: Packaged with Docker for portability.
-	Infrastructure as Code: Terraform-based AKS provisioning.
-	CI/CD Pipelines: Automated deployment and rollback using GitHub Actions.
-	Monitoring & Logging: Prometheus and Grafana for system observability.
-	Load Balancer: External access through an Azure Load Balancer.



## Run Locally

Clone the project

```bash
git clone https://github.com/Nandhi711/Ci-CD-develpoment-for-AI.git
```

Go to the project directory

```bash
cd Ci-CD-develpoment-for-AI
```

Build the Docker image: 
```bash
docker build -t llm-app 
```
```bash
docker run -p 8080:80 llm-app
```


## Deployment

Navigate to the infrastructure directory
```bash
cd infrastructure
```
Initialize Terraform
```bash
terraform init
```
Apply the Terraform configuration: 
```bash
terraform apply -auto-approve
```


## Deploy to AKS

```bash
az login
```
```bash
az aks get-credentials --resource-group <resource-group> --name <aks-cluster>
```
Deploy the application:
 ```bash
kubectl apply -f ci-cd/deploy.yaml
```
## Usage

Example API request:
```bash
curl -X POST "http://<EXTERNAL-IP>/generate" -H "Content-Type: application/json" -d '{ "prompt": "Tell me a joke" }'

```


## Running Tests

The project includes GitHub Actions workflows for deployment and rollback.

• deploy.yaml  : Triggers on push to main and deploys to AKS.


• rollback.yaml:  Rolls back in case of failure.



## Monitoring & Logging
# Prometheus
  
Used to collect metrics from the Kubernetes cluster

To access Prometheus:
 ```bash
kubectl port-forward -n monitoring svc/prometheus-server 9090:80
```
Link
```bash
http://localhost:9090 
```
 # Grafana

Used for visualization of monitoring data.

Retrieve Grafana password: 
```bash
$encodedPassword = kubectl get secret --namespace monitoring grafana -o jsonpath="{.data.admin-password}"
```
```bash
$decodedPassword = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($encodedPassword))
```
```bash
echo $decodedPassword
```

Run Grafana: 
```bash
kubectl --namespace monitoring port-forward svc/grafana 3000:3000
```
Open Grafana :
```bash
http://localhost:3000 
```
## Monitoring 
Grafana

![Screenshot (748)](https://github.com/user-attachments/assets/7c4c5a33-ec74-4437-afa5-4780c344f8e1)

prometheus

![Screenshot (749)](https://github.com/user-attachments/assets/81822635-a35a-4850-a1e1-bc5bcdfb95f8)



