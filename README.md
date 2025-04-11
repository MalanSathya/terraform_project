# Terraform Project – N01639496

This project automates the provisioning of a complete Azure infrastructure using Terraform. It includes the deployment of Linux and Windows virtual machines, configuration of networking components, and setup of essential extensions like Antimalware.

## 📁 Project Structure

- **Root Module**: Contains the main Terraform configuration files (`main.tf`, `variables.tf`, `outputs.tf`, etc.) that orchestrate the overall infrastructure deployment.
- **Modules**:
  - `modules/vmlinux-n01639496`: Defines the configuration for Linux virtual machines, including provisioning scripts.
  - `modules/vmwindows-n01639496`: Defines the configuration for Windows virtual machines, including Antimalware extension setup.

## 🚀 Features

- **Modular Design**: Separate modules for Linux and Windows VMs promote reusability and clarity.
- **Provisioners**: Linux VMs utilize `null_resource` with `remote-exec` to perform post-deployment configurations.
- **Antimalware Extension**: Windows VMs are equipped with the Azure Antimalware extension for enhanced security.
- **SSH Key Management**: Public SSH keys are managed via variables for secure and flexible access.

## 🔧 Prerequisites

- Terraform installed on your local machine.
- An active Azure subscription.
- Configured Azure CLI with appropriate permissions.
- SSH key pair generated and accessible.

## 🛠️ Usage

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/MalanSathya/terraform_project.git
   cd terraform_project
   ```

2. **Initialize Terraform**:
   ```bash
   terraform init
   ```

3. **Review and Customize Variables**:
   Edit the `variables.tf` files in both the root and module directories to match your desired configuration.

4. **Plan the Deployment**:
   ```bash
   terraform plan
   ```

5. **Apply the Configuration**:
   ```bash
   terraform apply
   ```

## 📝 Notes

- Ensure that the SSH public key path specified in the variables is correct and accessible.
- The Antimalware extension settings can be customized within the Windows VM module as needed.
- Monitor the Terraform output for any errors or required actions during deployment.

## 📄 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

