# !NOTE! - These are only a subset of CONFIG-VARS.md provided for sample.
# Customize this file to add any variables from 'CONFIG-VARS.md' that you want 
# to change their default values.

# ****************  REQUIRED VARIABLES  ****************
# These required variables' values MUST be provided by the User
prefix         = "rdam-lz-dapr-sas"
location       = "westeurope" # e.g., "eastus2"
ssh_public_key = "~/.ssh/id_rsa.pub"
# ****************  REQUIRED VARIABLES  ****************

# Bring your own existing resources
resource_group_name = "RG_Rdam_LZ_DAPR_SAS" # only needed if using pre-existing
network_resource_group_name = "RG_Rdam_LZ_DAPR_SAS_Network"
vnet_name           = "VNET_Rdam_DAPR_SAS"           # only needed if using pre-existing
nsg_name            = "NSG_Rdam_LZ_DAPR_SAS"            # only needed if using pre-existing
subnet_names        = {
  "aks": "N-10.246.4.0_23", 
  "misc": "N-10.246.1.0_24" 
}

# !NOTE! - Without specifying your CIDR block access rules, ingress traffic
#          to your cluster will be blocked by default.

# **************  RECOMMENDED  VARIABLES  ***************
default_public_access_cidrs = ["10.246.0.0/21"] # e.g., ["123.45.6.89/32"]
# **************  RECOMMENDED  VARIABLES  ***************

# Tags for all taggable items in your cluster.
tags = {} # e.g., { "key1" = "value1", "key2" = "value2" }

# Azure Postgres config
create_postgres                  = true # set this to "false" when using internal Crunchy Postgres
postgres_ssl_enforcement_enabled = true
postgres_administrator_password  = "mySup3rS3cretPassw0rd"

# Azure Container Registry config
create_container_registry           = true
container_registry_sku              = "Standard"
container_registry_admin_enabled    = true

# AKS config
kubernetes_version         = "1.19.9"
default_nodepool_min_nodes = 2
default_nodepool_vm_type   = "Standard_D8s_v4"

# AKS Node Pools config
node_pools = {
  cas = {
    "machine_type" = "Standard_E16s_v3"
    "os_disk_size" = 200
    "min_nodes"    = 1
    "max_nodes"    = 1
    "max_pods"     = 110
    "node_taints"  = ["workload.sas.com/class=cas:NoSchedule"]
    "node_labels" = {
      "workload.sas.com/class" = "cas"
    }
  },
  compute = {
    "machine_type" = "Standard_E16s_v3"
    "os_disk_size" = 200
    "min_nodes"    = 1
    "max_nodes"    = 1
    "max_pods"     = 110
    "node_taints"  = ["workload.sas.com/class=compute:NoSchedule"]
    "node_labels" = {
      "workload.sas.com/class"        = "compute"
      "launcher.sas.com/prepullImage" = "sas-programming-environment"
    }
  },
  connect = {
    "machine_type" = "Standard_E16s_v3"
    "os_disk_size" = 200
    "min_nodes"    = 1
    "max_nodes"    = 1
    "max_pods"     = 110
    "node_taints"  = ["workload.sas.com/class=connect:NoSchedule"]
    "node_labels" = {
      "workload.sas.com/class"        = "connect"
      "launcher.sas.com/prepullImage" = "sas-programming-environment"
    }
  },
  stateless = {
    "machine_type" = "Standard_D16s_v3"
    "os_disk_size" = 200
    "min_nodes"    = 1
    "max_nodes"    = 2
    "max_pods"     = 110
    "node_taints"  = ["workload.sas.com/class=stateless:NoSchedule"]
    "node_labels" = {
      "workload.sas.com/class" = "stateless"
    }
  },
  stateful = {
    "machine_type" = "Standard_D8s_v3"
    "os_disk_size" = 200
    "min_nodes"    = 1
    "max_nodes"    = 3
    "max_pods"     = 110
    "node_taints"  = ["workload.sas.com/class=stateful:NoSchedule"]
    "node_labels" = {
      "workload.sas.com/class" = "stateful"
    }
  }
}

# Jump Box
create_jump_vm = false

# Storage for SAS Viya CAS/Compute
storage_type = "standard"
# required ONLY when storage_type is "standard" to create NFS Server VM
create_nfs_public_ip = false
nfs_vm_admin         = "nfsuser"
nfs_vm_machine_type  = "Standard_D8s_v4"
nfs_raid_disk_size   = 128
nfs_raid_disk_type   = "Standard_LRS"

# Azure Monitor
create_aks_azure_monitor = false
