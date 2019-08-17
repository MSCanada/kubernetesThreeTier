Steps to Install Ingress Controller
1) Install Helm:
helm install stable/nginx-ingress --name my-nginx
This would install controller and default backend.

2) kubectl patch svc my-nginx-nginx-ingress-controller -p '{"spec": {"type": "LoadBalancer", "externalIPs":["172.31.71.218"]}}'

3) Run deploy.sh

Then Web Page can be viewed at 172.31.71.218

Reference: stephengrider