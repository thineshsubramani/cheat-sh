### 1 Pods
kubectl get pods              # Get
kubectl describe pod <name>   # Describe
kubectl logs <name>           # Logs
kubectl exec -it <name> -- /bin/bash # Exec
kubectl delete pod <name>     # Delete
kubectl port-forward <name> 8080:80 # Port Forward
kubectl get pods -o wide      # Wide

### 2 Deployments
kubectl get deployments       # Get
kubectl create deployment my-dep --image=nginx # Create
kubectl scale deployment my-dep --replicas=3 # Scale
kubectl rollout status deployment/my-dep # Rollout Status
kubectl rollout undo deployment/my-dep # Undo
kubectl rollout history deployment/my-dep # History

### 3 Services
kubectl get services          # Get (or svc)
kubectl expose deployment my-dep --port=80 --type=NodePort # Expose
kubectl describe svc <name>   # Describe
kubectl delete svc <name>     # Delete

### 4 Config & Secrets
kubectl get configmaps        # Get CM
kubectl get secrets           # Get Secrets
kubectl create secret generic my-sec --from-literal=pwd=123 # Create Secret
kubectl get secret my-sec -o jsonpath='{.data.pwd}' | base64 -d # Decode

### 5 Namespaces
kubectl get ns                # Get
kubectl config set-context --current --namespace=my-ns # Set Context
kubectl create ns my-ns       # Create
kubectl delete ns my-ns       # Delete

### 6 Nodes
kubectl get nodes             # Get
kubectl describe node <name>  # Describe
kubectl top nodes             # Top (Resource usage)
kubectl cordon <node>         # Cordon (Mark unschedulable)
kubectl drain <node>          # Drain

### 7 Crictl (Container Runtime Interface)
crictl pods                   # Pods
crictl ps                     # Ps (List containers)
crictl images                 # Images
crictl pull <image>           # Pull
crictl logs <container_id>    # Logs
crictl exec -it <container_id> sh # Exec
crictl inspect <container_id> # Inspect
crictl stats                  # Stats
crictl rmi <image_id>         # Rmi

### 8 Ctr (Containerd CLI)
ctr images pull docker.io/library/nginx:latest # Images Pull
ctr images ls                 # Images List
ctr run -d docker.io/library/nginx:latest my-nginx # Run
ctr containers ls             # Containers
ctr tasks ls                  # Tasks (Running processes)
ctr tasks kill <container_id> # Kill
ctr ns ls                     # Namespaces
ctr containers delete <container_id> # Delete

### 9 Context & Config
kubectl config view           # View
kubectl config get-contexts   # Contexts
kubectl config use-context <name> # Use

### 10 Apply
kubectl apply -f file.yaml    # File
kubectl apply -f ./dir        # Dir
kubectl delete -f file.yaml   # Delete

### 11 Jobs & CronJobs
kubectl get jobs              # Get Jobs
kubectl get cronjobs          # Get Cron
kubectl create job --from=cronjob/my-cron manual-job # Manual

### 12 Troubleshooting
kubectl get events --sort-by=.metadata.creationTimestamp # Events
kubectl explain pod.spec      # Explain
kubectl top pods              # Top Pods

### 13 Helm (Bonus)
helm list                     # List
helm install my-release my-chart # Install
helm uninstall my-release     # Uninstall
helm repo add stable <url>    # Repo Add

### 14 RBAC
kubectl get roles             # Roles
kubectl get rolebindings      # Bindings
kubectl auth can-i create pods # Auth Can-I

### 15 Ingress
kubectl get ingress           # Get
kubectl describe ingress <name> # Describe

### 16 Storage
kubectl get pvc               # PVC
kubectl get pv                # PV
kubectl get sc                # SC