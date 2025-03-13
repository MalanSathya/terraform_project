Challenges I faced:

During my Terraform project, I encountered several challenges. Initially, implementing common tags across all resources proved difficult. Despite defining tags in the root module, they weren't propagating correctly to child modules. I resolved this by explicitly passing tags to each module and ensuring they were declared in the `variables.tf` files of the child modules.

Another challenge I faced involved configuring admin credentials for virtual machines. I was confused about how to set paths for SSH keys and passwords. I addressed this by parameterizing these paths in `variables.tf` and using the `file()` function to read SSH keys securely.

A significant misunderstanding arose when configuring the load balancer. Initially, I assumed that VMs needed private IPs to connect to the load balancer. However, I learned that the correct approach involves using a public IP for both the load balancer and VMs according to our rubric.

When trying to output VM IDs, I encountered an issue with module outputs not propagating correctly. I resolved this by defining outputs in child modules and concatenating VM IDs in the root module. Additionally, Azure subscription limits initially prevented me from deploying four VMs due to public IP quotas. I temporarily resolved this by reducing the number of VMs.

Overall, my project involved several key design decisions to ensure scalability, security, and cost optimization. These included using a remote backend for state management, modularizing the Terraform configuration, and implementing Azure best practices such as network security groups and availability sets. The project also highlighted the importance of understanding Azure services and Terraform features to overcome technical challenges effectively.
