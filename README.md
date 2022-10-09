# Based on document available at: 

https://docs.konghq.com/gateway/3.0.x/install/kubernetes/helm-quickstart/ 

# Run the following scripts to setup: 

1. create_king_cluster.cmd to create kind cluster
2. create-secrets.cmd local need kong need configuration resources, namespace, secrets, license
3. cert_manager_setup.cmd to setup tls certificate  
4. Port forward the kong proxy

 
# Debug the installation:


1. helm list-A to list all Helm deployments
2.  To get the deployed manifest use
    helm get manifest quickstart -n kong > kong-deploy-manifest.yaml
3. To get the deployed values
   helm get values quickstart -n kong
4. To upgrade the release after changing values
   helm upgrade quickstart kong/kong --namespace kong --values minimal-kong-enterprise-dbless.yaml

For best experience use [Lens](https://k8slens.dev/index.html) or [k9s](https://k9scli.io/)

# Test Kong:

λ curl http://localhost:9090/ 
{"message":"no Route matched with those values"}

C:\work\learning\kong\using-kind 
λ curl http://127-0-0-1.nip.io:9090/ 
{"message":"no Route matched with those values"}
