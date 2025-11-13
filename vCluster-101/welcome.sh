clear
cat << "EOF"

                ┌───────────────────────────────────────────┐
                │           Physical Kubernetes Cluster     │
                │                (Host Cluster)             │
                │                                           │
                │   Namespace: team-a                       │
                │   ┌─────────────────────────────────────┐ │
                │   │          vCluster: vcluster-a       │ │
                │   │-------------------------------------│ │
                │   │  API Server (virtual)               │ │
                │   │  Controller Manager (virtual)       │ │
                │   │  Scheduler (virtual)                │ │
                │   │                                     │ │
                │   │  Workloads inside vCluster →        │ │
                │   │      Deployments / Pods / Services  │ │
                │   └─────────────────────────────────────┘ │
                │                                           │
                │   Host Cluster Pods (Synced via Syncer)   │
                │      ┌──────────────────────────────┐     │
                │      │ syncer / coredns / workloads │     │
                │      └──────────────────────────────┘     │
                │                                           │
                └───────────────────────────────────────────┘

EOF