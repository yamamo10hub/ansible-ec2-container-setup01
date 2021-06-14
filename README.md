# use ansible setup to docker-compose with nginx container on aws ec2

## example

```
git clone this
cd ansible-ec2-container-setup01
vi ssh_config
ansible-playbook site.yml --syntax-check
ansible-playbook site.yml --check
ansible-playbook site.yml

# activate nginx on target ec2 host port8888
curl -vk http://xxx.xxx.xxx.xxx:8888/

```
