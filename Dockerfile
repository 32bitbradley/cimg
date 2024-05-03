FROM cimg/python:3.10
COPY ./requirements.txt /
# Install utilities via apt
RUN sudo apt update -y && sudo apt install sshpass git

# Install Ansible and dependancies via pip
RUN pip install --no-cache-dir --upgrade pip -r /requirements.txt
