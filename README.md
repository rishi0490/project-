 # DevOps Microservice Project
This project demonstrates the end-to-end implementation of a basic microservice application using various DevOps practices and tools.The entire pipeline is orchestrated using Jenkins.

## Prerequisites

- [Docker]
- [Kubernetes](kubeadm,kubectl,kubelet setup)
- [Helm]
- [Jenkins]
- [SonarQube]
- [Trivy]
- [Grafana]

## Getting Started

Follow these steps to set up and run the DevOps pipeline:

1. **Clone the Repository**: Clone this repository to your local machine.

```bash
git clone https://github.com/rishi0490/project-.git
```

2. **Build the Microservice**: Navigate to the `project` directory and build the microservice using Maven.

```bash
cd project 
mvn clean install
```

3. **Run Unit Tests**: Execute unit tests to ensure the microservice's functionality.

```bash
mvn test
```

4. **Integration**: Integrate the microservice with other components as needed.

5. **Code Quality Analysis**: Analyze the code quality using SonarQube.

6. **Containerization**: Build a Docker image of the microservice.

   

```bash
docker build -t my-project:latest .
```

7. **Image Scanning**: Scan the Docker image using Trivy for vulnerabilities.

8. **Kubernetes Deployment**: Deploy the microservice on a Kubernetes cluster using Helm charts.

```bash
cd ../kubernetes
helm install my-project ./microservice-chart
```

9. **Monitoring Setup**: Set up monitoring using Grafana and Prometheus.

10. **Jenkins Pipeline**: The entire process can be automated using the Jenkins pipeline provided in the repository. Configure the pipeline in your Jenkins environment and trigger it.

## ****Pipeline Steps****

The Jenkins pipeline included in this project automates the following steps:

1. Build microservice using Maven.
2. Run unit tests.
3. Integrate microservice with other components.
4. Analyze code quality with SonarQube.
5. Build Docker image and scan with Trivy.
6. Deploy on Kubernetes using Helm charts.
7. Set up monitoring with Grafana and Prometheus.

Make sure to configure Jenkins properly and adjust the pipeline stages according to your environment.

## **Monitoring**

The monitoring setup involves using Grafana and Prometheus. You can access the Grafana dashboard to monitor the health and performance of the deployed microservice. Prometheus collects and stores metrics that Grafana uses to create visualizations.
