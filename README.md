# 🚀 huebio-platform

![Backstage](https://img.shields.io/badge/Backstage-Portal-0057ff?logo=backstage) ![Terraform](https://img.shields.io/badge/Terraform-EKS-623CE4?logo=terraform) ![Docker](https://img.shields.io/badge/Docker-Ready-2496ED?logo=docker) ![Kubernetes](https://img.shields.io/badge/Kubernetes-Ready-326CE5?logo=kubernetes)

A modern internal developer platform setup centered around a Backstage portal, Kubernetes deployment assets, and infrastructure automation for EKS.

## ✨ What’s inside

- **Backstage portal** in the `huebio-platform-portal/` folder
- **PostgreSQL bootstrap script** for local Backstage development
- **Terraform configuration** for EKS infrastructure in `eks/`
- **Kubernetes manifests** in `manifests/`

## 🧭 Project structure

```text
.
├── backstage-postegres.sh
├── eks/
├── huebio-platform-portal/
├── manifests/
└── README.md
```

## ⚙️ Prerequisites

Make sure you have:

- Node.js 22 or 24
- Yarn
- Docker
- kubectl
- Terraform

## ▶️ Quick start

### 1) Start the local database

```bash
./backstage-postegres.sh
```

### 2) Start the Backstage app

```bash
cd huebio-platform-portal
yarn install
yarn start
```

Then open: http://localhost:3000

### 3) Deploy infrastructure

```bash
cd eks
terraform init
terraform plan
terraform apply
```

## ☸️ Kubernetes and manifests

The `manifests/` folder contains deployment manifests you can apply to your cluster with:

```bash
kubectl apply -f manifests/
```

## 🛠️ Notes

- The portal uses environment variables from `.env` for local database settings.
- The Terraform folder is intended for provisioning the EKS environment.
- The PostgreSQL bootstrap script helps you run a local dev database quickly.

## 🤝 Contributing

Feel free to extend the portal, add templates, or improve the infrastructure setup.
