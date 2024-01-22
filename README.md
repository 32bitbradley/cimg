# CircleCI CImg Python3.10 extended with Ansible

This image extends the base Circleci `cimg/python:3.10` image with Ansible and commonly required utilities, such as:

**Apt**

* sshpass

**Pip**

* Ansible==9.1.0


# Usage

To use thsi image in your CircleCI workflows, simply specify it as the docker image

```yaml
jobs:
  run-playbook:
    docker:
      - image: 32bitbradley/cimg-python310-ansible:latest
    environment:
      ANSIBLE_FORCE_COLOR: "True"
      ANSIBLE_HOST_KEY_CHECKING: "False"
    steps:
      - checkout
```
