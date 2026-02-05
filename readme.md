
**Use case:** quick POCs, short-lived environments, or small hosts.  
**Tested on:** Amazon Linux 2 / Amazon Linux 2023; works on **t4g.micro (ARM64)** and **t3.micro (x86)**.


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


## step by step:

    install docker and docker compose in the linux server
    modify the prometheus.yaml node exporter target IP with private IP of instance
    run the tools using:
        docker compose up -d
        docker ps

    Access the prometheus and check the target health
    
    Access the Grafana(check the compose file for user and password) and add the prometheus data source

    Add node exporter dashboard, Node Exporter Full (ID: 1860)

    Access the node exporter dashboard
