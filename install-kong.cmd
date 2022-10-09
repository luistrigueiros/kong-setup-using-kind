helm repo add kong https://charts.konghq.com
helm install quickstart kong/kong --namespace kong --values https://bit.ly/KongGatewayHelmValuesAIO

