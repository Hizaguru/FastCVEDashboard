# FastCVE Grafana Dashboard

## Project Overview

This project provides a Grafana dashboard for visualizing CVE (Common Vulnerabilities and Exposures) data. The dashboard supports searching, displaying, and visualizing data based on CVE, CWE, and CPE standards.

## Features

- **Comprehensive Data Visualization**: Display and analyze CVE data.
- **Standards Integration**: Seamless integration with CVE, CWE, and CPE data.
- **Interactive Filters**: Customize the data displayed with user-friendly filters.

## Setup Instructions

### Prerequisites

- Docker
- Docker Compose

### Steps to Run the Project

#### 1. Clone the FastCVE Repository

Start by cloning the FastCVE repository, which contains the backend services required for this dashboard.

```bash
git clone https://github.com/binareio/FastCVE.git .
```

Once cloned, follow the instructions provided in the README.md file within the FastCVE repository to configure and run the FastCVE service.

#### 2. Next, clone the repository for the Grafana dashboard:

```bash
git clone https://github.com/Hizaguru/FastCVEDashboard.git
cd fastcve-grafana
```

### 3. Run Grafana

Ensure that both FastCVE and Grafana containers are running in the same Docker network. You can achieve this by specifying the network in the Docker run command:
docker run -d --name=grafana --network=<your_fastcve_network> -p 3000:3000 grafana/grafana

Replace <your_fastcve_network> with the actual Docker network name that FastCVE is using. If you haven't created a custom network, Docker Compose should handle this automatically if both services are defined in the same docker-compose.yml file. 4.

### 4. Import the Grafana Dashboard

Open your web browser and navigate to http://localhost:3000.
Log in to Grafana using the default credentials (username: admin, password: admin).
Go to Dashboards -> Manage.
Click the Import button.
Upload the dashboard.json file located in the FastCVEDashboard repository.

### 5. Access the Dashboard

After importing the dashboard, you can access it directly through Grafana's interface and start exploring the CVE data.
