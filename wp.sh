#!/bin/bash
gcloud container clusters get-credentials intern-cluster --region us-east1 --project intern-461913
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update
helm upgrade --install --create-namespace wordpress-release bitnami/wordpress -n wordpress -f values.yaml
echo kesz