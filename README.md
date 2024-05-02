# CircleCI CImg Python3.10 extended with Ansible

This image extends the base Circleci `cimg/python:3.10` image with Ansible and commonly required utilities, such as:

**Apt**

* sshpass
* git

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

# Looking for more

Urgh, installing pip requirements take such a long time, and for every pipeline run too!

This image is part of a collection of CircleCI images I've built with various utilities pre-installed to save time during pipeline runs, check them out on [Dockerhub](https://hub.docker.com/search?q=32bitbradley%2Fcimg) and [Github](https://github.com/search?q=owner%3A32bitbradley+cimg&type=repositories)
