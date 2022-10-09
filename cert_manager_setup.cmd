helm repo add jetstack https://charts.jetstack.io 

helm upgrade --install cert-manager jetstack/cert-manager ^
    --set installCRDs=true --namespace cert-manager --create-namespace

kubectl apply -n kong -f cert_manager_issuer.yaml