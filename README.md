1. EKS Cluster instead of ECS ✅
Correct replacement. EKS is the right choice since you're adapting for Kubernetes.


2. Subnets (Private and Public) ✅
Creating a public subnet for the bastion host and a private subnet for the workload (WordPress and microservices) is ideal.


This matches the requirement for services running in private subnets.

3. Bastion Host for Private Access ✅
Using a bastion host to access the private subnet is a great idea.


It ensures secure access to your private environment while keeping the services isolated.

4. Pull WordPress Image and Create YAML ✅
Pulling the WordPress image, creating a container, and writing the YAML for deployment fits perfectly.

Ensure you:

Expose WordPress via an Ingress (ALB) to mimic ECS ALB functionality.

Use the RDS instance for WordPress, passing database credentials securely (e.g., via Secrets Manager).

5. "Hello from Microservice" Custom YAML ✅
Including the custom microservice in the YAML with the response "Hello from Microservice" fulfills the requirement.

Ensure this microservice is part of the Kubernetes deployment and is accessible via the same Ingress.

6. Autoscaling with Custom Policy ✅
Implementing autoscaling using the Horizontal Pod Autoscaler (HPA) based on CPU and memory is the correct Kubernetes equivalent to ECS auto-scaling.

Suggestions:
Secrets Manager: Use AWS Secrets Manager or Kubernetes secrets to manage credentials for the WordPress-RDS connection.

Ingress Controller: Ensure you're using an ALB Ingress Controller for routing traffic to the WordPress and microservice pods.

Monitoring: Add Prometheus or CloudWatch metrics to validate the autoscaling policy.
