
kubectl delete svc tiller-deploy --namespace kube-system
kubectl delete deploy tiller-deploy --namespace kube-system
kubectl delete serviceaccount --namespace kube-system tiller

kubectl create serviceaccount --namespace kube-system tiller
kubectl create clusterrolebinding tiller-cluster-rule --clusterrole=cluster-admin --serviceaccount=kube-system:tiller
helm init --service-account tiller