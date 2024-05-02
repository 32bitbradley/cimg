FROM cimg/python:3.10

# Install utilities via apt
RUN sudo apt update -y && sudo apt install sshpass git

# Install Ansible and dependancies via pip
RUN pip install --no-cache-dir --upgrade pip ansible==9.1.0
