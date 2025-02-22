# 🛠️ Automated Server Setup with Bash & Ansible 🚀  

This project automates the provisioning of a Linux server using **Bash scripting** and **Ansible**. It sets up essential services, secures SSH access, and configures a firewall for better security.  

---

## 🌟 Features  
✅ **System Update & Upgrade** – Ensures all packages are up to date  
✅ **Installs Essential Services** – Nginx, Fail2Ban, UFW  
✅ **SSH Hardening** – Disables root login, changes SSH port, adds a sudo user  
✅ **Firewall Configuration** – Enables UFW with pre-configured rules  
✅ **Automated Deployment** – Uses Bash and Ansible for automation  

---

## 🚀 Getting Started  

### **1️⃣ Clone the Repository**  

git clone https://github.com/jasonwb/automated-server-setup.git
cd automated-server-setup

2️⃣ Run the Bash Script (Manual Approach)

chmod +x setup-server.sh
./setup-server.sh

3️⃣ Run the Ansible Playbook (Recommended Approach)

First, ensure Ansible is installed on your local machine. Then:

ansible-playbook -i inventory.ini server-setup.yml
