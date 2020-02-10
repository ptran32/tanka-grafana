# tanka-grafana

Test jsonnet and tanka for k8s manifest and deployment.

# Requirements

- Have a k8s cluster created
- Install Tanka client (https://tanka.dev/install)
- Specify the target k8s cluster and namespace in spec.json

# Command to use 

- tk show environments/default (dry-run run)
- tk diff environments/default (show diff)
- tk apply environments/default (apply diff)
