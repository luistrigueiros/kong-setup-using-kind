

kubectl config use-context kind-kong && kubectl cluster-info

kubectl create namespace kong

kubectl create secret generic kong-config-secret -n kong ^
    --from-literal=portal_session_conf='{"storage":"kong","secret":"super_secret_salt_string","cookie_name":"portal_session","cookie_samesite":"off","cookie_secure":false}' ^
    --from-literal=admin_gui_session_conf='{"storage":"kong","secret":"super_secret_salt_string","cookie_name":"admin_session","cookie_samesite":"off","cookie_secure":false}' ^
    --from-literal=pg_host="enterprise-postgresql.kong.svc.cluster.local" ^
    --from-literal=kong_admin_password=kong ^
    --from-literal=password=kong

kubectl create secret generic kong-enterprise-license --from-literal=license="'{}'" -n kong --dry-run=client -o yaml | kubectl apply -f -
