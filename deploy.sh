docker build -t msuhail/multi-client:latest -f ./client/Dockerfile ./client
docker build -t msuhail/multi-server:latest -f ./server/Dockerfile ./server
docker build -t msuhail/multi-worker:latest -f ./worker/Dockerfile ./worker

sudo docker login -u msuhail -p Cricket_123

docker push msuhail/multi-client:latest
docker push msuhail/multi-server:latest
docker push msuhail/multi-worker:latest


kubectl apply -f k8s

kubectl set image deployments/server-deployment server=msuhail/multi-server:latest
kubectl set image deployments/client-deployment client=msuhail/multi-client:latest
kubectl set image deployments/worker-deployment worker=msuhail/multi-worker:latest