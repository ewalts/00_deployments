#MySQL AWS Instance deployment, Ubuntu 22.04 / MySQL 8.1

- This is aimple mysql deployment directly on the instance. 
 Adapt to your needs instance type, region/az etc.


Typical requirements.
Ansible
AWS account/credentials
Logged in, or include your key/secret

Inventory.

All you need for inventory is something like this.

    ##############################>
    home:
      hosts:
        localhost:
          ansible_host: 127.0.0.1
      vars:
        ansible_user: myuser
    ec2hosts:
      vars:
        ansible_ssh_private_key_file: ~/.ssh/product_certs/rsa_cert.pem
      hosts:
    
    
NOTE:
  If you run into any issues running this deployment, it is likely related to content in the vars_files or json scripts.  These are modified for pubic view and not the values as what are called when I'm running these plays. Most shouldn't matter.



Execute:

I typically run from this directory similar to this.

 cd thisFolder/mysql/


  ansible-playbook -i playbook/inventory/inventory.yml -v

   in other depoyments it may be inventory_files/inventory.yml 
