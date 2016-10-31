# Vagrantlab

Vagrantfiles for dev environments


## Requirements

- Vagrant
- Virtualbox
- Git

## Available VMs

| Name | Box | Provisioners | Ports |
| --- | --- | --- | --- |
| ansible | [ARTACK/debian-jessie](https://atlas.hashicorp.com/ARTACK/boxes/debian-jessie) | shell, ansible-local | 80 => 8086 |
| mean | [ARTACK/debian-jessie](https://atlas.hashicorp.com/ARTACK/boxes/debian-jessie) | shell | 80 => 8080
| docker | [ARTACK/debian-jessie](https://atlas.hashicorp.com/ARTACK/boxes/debian-jessie) | shell, docker | 80 => 8080 |
| php | debian wheezy | shell, chef | 80 => 8080 |
| python | debian wheezy | shell | 80 => 8000 |
| ruby | [ARTACK/debian-jessie](https://atlas.hashicorp.com/ARTACK/boxes/debian-jessie) | shell | 80 => 8080 |
