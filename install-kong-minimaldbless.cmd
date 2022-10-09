helm repo add kong https://charts.konghq.com
helm install quickstart kong/kong --namespace kong --values ./minimal-kong-enterprise-dbless.yaml

