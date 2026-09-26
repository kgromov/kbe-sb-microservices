#!/bin/bash
#change ownership to root explicitly:
# to prevent a non-root user from injecting a malicious config that root then executes
sudo chown root:root ./filebeat/filebeat.docker.yml
sudo chmod go-w ./filebeat/filebeat.docker.yml
# start all services
kubectl apply -f ./k8s/elasticsearch-service.yml
kubectl apply -f ./k8s/kibana-service.yml
kubectl apply -f ./k8s/filebeat-service.yml
kubectl apply -f ./k8s/mysql-service.yml
kubectl apply -f ./k8s/jms-service.yml
kubectl apply -f ./k8s/inventory-failover-service.yml
kubectl apply -f ./k8s/inventory-service.yml
kubectl apply -f ./k8s/beer-service.yml
kubectl apply -f ./k8s/order-service.yml
kubectl apply -f ./k8s/gateway-service.yml