FROM cimg/python:3.10

# Install utilities via apt
RUN sudo apt update -y && sudo apt install sshpass

# Install Ansible and dependancies via pip
RUN pip install ansible==9.1.0
