cd
rm -rf $users
mkdir $users
cd $users
openssl genrsa -out $users.key 2048
openssl req -new -key $users.key -out $users.csr -subj "/CN=$users/O=$users-bitnami"
openssl x509 -req -in $users.csr -CA /etc/kubernetes/pki/ca.crt -CAkey /etc/kubernetes/pki/ca.key -CAcreateserial -out $users.crt -days 500
kubectl config set-credentials $users --client-certificate=$HOME/$users/$users.crt  --client-key=$HOME/$users/$users.key
kubectl config set-context $users-context --cluster=kubernetes --namespace=$namespace --user=$users
sed -i "s/ns/${namespace}/g" /root/Roles/roles.yaml

kubectl apply -f /root/Roles/roles.yaml
sed -i "s/username/${users}/g" /root/Roles/rolebinding.yaml
sed -i "s/ns/${namespace}/g" /root/Roles/rolebinding.yaml
kubectl apply -f /root/Roles/rolebinding.yaml
cd
kubectl --context=$users-context get pods
