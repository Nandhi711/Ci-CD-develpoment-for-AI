Project Overview

This project focuses on deploying a Large Language Model (LLM)-based application using Kubernetes on Azure Kubernetes Service (AKS). The deployment follows a robust CI/CD pipeline with GitHub Actions and Terraform for infrastructure provisioning. Additionally, monitoring is implemented using Prometheus and Grafana to ensure system observability.

Features

LLM-based API: Provides AI-generated responses.

Containerized Application: Packaged with Docker for portability.

Infrastructure as Code: Terraform-based AKS provisioning.

CI/CD Pipelines: Automated deployment and rollback using GitHub Actions.

Monitoring & Logging: Prometheus and Grafana for system observability.

Load Balancer: External access through an Azure Load Balancer.

Folder Structure

Installation

Prerequisites

Docker

Kubernetes CLI (kubectl)

Terraform

Azure CLI

GitHub Actions setup

Steps

Clone the repository:

Build the Docker image:

Run locally (optional):

Deployment

Provisioning Infrastructure with Terraform

Navigate to the infrastructure directory:

Initialize Terraform:

Apply the Terraform configuration:

Deploy to AKS

Authenticate with Azure:

Deploy the application:

Verify deployment:

Usage

Once deployed, the API can be accessed at:

Example API request:

CI/CD Workflow

The project includes GitHub Actions workflows for deployment and rollback.

deploy.yaml: Triggers on push to main and deploys to AKS.

rollback.yaml: Rolls back in case of failure.

Trigger a Deployment

Make changes and push to main:

Monitor GitHub Actions for workflow execution.

Monitoring & Logging

Prometheus

Used to collect metrics from the Kubernetes cluster.

To access Prometheus:

Open http://localhost:9090 in your browser.

Grafana

Used for visualization of monitoring data.

Retrieve Grafana password:

Access Grafana:

Open http://localhost:3000 in your browser and log in using the retrieved password.

Contributing

Fork the repository.

Create a new branch:

Commit and push changes:

Open a pull request.

License

This project is licensed under the MIT License.

