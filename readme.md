
**Use case:** quick POCs, short-lived environments

**Tested on:** Amazon Linux 2 / Amazon Linux 2023 t2.micro


## 🧱 Prerequisites

- An EC2 instance (Amazon Linux 2 or 2023)
- Docker + Docker Compose v2 installed
- Security Group allows inbound:
  - `3000/tcp` (Grafana UI) from your IP
  - `9090/tcp` (Prometheus UI) from your IP (optional)
- **Do not** expose `9100` (Node Exporter) publicly


## 📦 Project Structure
    monitoring/
    ├─ docker-compose.yml
    └─ prometheus/
    └─ prometheus.yml


## Steps to run this:

  install docker and docker compose in the linux server
  modify the prometheus.yaml node exporter target IP with private IP of instance
  run the tools using:
      docker compose up -d
      docker ps

  Access the prometheus and check the target health
  <img width="1920" height="809" alt="image" src="https://github.com/user-attachments/assets/7a91495a-1e7b-40b7-90f5-c99f46d5dc0b" />

  
  Access the Grafana(check the compose file for user and password) and add the prometheus data source
  Add node exporter dashboard, Node Exporter Full (ID: 1860)

  Access the node exporter dashboard
  <img width="1920" height="955" alt="image" src="https://github.com/user-attachments/assets/8873224c-ca7c-451b-b1b6-ebb7aaca8cae" />
