kind create cluster -n backstage-lab

kubectl apply -f backstage-rbac.yaml

export K8S_KIND_TOKEN=$(kubectl create token backstage -n default --duration=999999h --context kind-kind-backstage-lab)

export K8S_CONFIG_CA_DATA="$(kubectl config view --minify --raw -o jsonpath='{.clusters[0].cluster.certificate-authority-data}')"

kubectl config view --minify --raw -o jsonpath='{.clusters[0].cluster.certificate-authority-data}' | base64 -d > kind-ca.crt