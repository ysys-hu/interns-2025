#!/bin/bash
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update
helm upgrade --install --create-namespace wordpress-release bitnami/wordpress -n wordpress -f values.yaml
