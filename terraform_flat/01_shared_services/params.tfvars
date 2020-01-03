/*
 * Copyright 2019 Google LLC. This software is provided as-is, without warranty
 * or representation for any use or purpose. Your use of it is subject to your 
 * agreement with Google.  
 */
project_id      = "YOUR_PROJECT_ID"
region          = "europe-west4"
zone            = "europe-west4-c"
dns_main_domain = "mydomain.com"
# will expose services under the services.mydomain.com domain. Ex:
# example.services.mydomain.com
dns_services_subdomain = "services"
# List of users or groups that will be allowed to SSH into the instances of the project.
iap_tunnel_users = [
  "user:alfonso@my-domain.com",
]
# List of service accounts that will be allowed to post messages to the PubSub
# topic. If you can, create a group in Cloud Identity and add the CNZ log sink 
# service accounts to that group. You will find the log sink service account
# in the outputs of the 02_cn_zone terraform config.
proxy_notifiers = [
  "group:proxy-notifiers@my-domain.com",
]
# If we choose to use network tags for the firewall rules created by the cloud
# function, this parameter will allow to configure the network tags that we want
# to use. We will then need to add at least one of those tags to our service
# instances.
#proxy_target_tags = []
# If we choose to use service accounts for the firewall rules created by the cloud
# function, this parameter will allow to configure the service accounts that we want
# to use. We will then need to add at least one of those service accounts to our
# service instances. By default, we are adding, in the common.tf file, the service
# account that we are attaching to the healthz and example services.
#proxy_target_sas = []
random_suffix        = true
gcp_credentials_path = "/path/to/service_account_key.json"
