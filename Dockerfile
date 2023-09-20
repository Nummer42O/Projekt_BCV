# Use a base image
FROM docker.io/stereolabs/zed:3.8-gl-devel-cuda11.4-ubuntu20.04

# ARG USERNAME=johannes
# ARG USER_UID=1000
# ARG USER_GID=$USER_UID

# # Create the user
# RUN groupadd --gid $USER_GID $USERNAME
# RUN useradd --uid $USER_UID --gid $USER_GID -m $USERNAME
# # Add sudo support
# RUN DEBIAN_FRONTEND=noninteractive apt update
# RUN DEBIAN_FRONTEND=noninteractive apt install -y sudo
# RUN echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME
# RUN chmod 0440 /etc/sudoers.d/$USERNAME

# Set the working directory
# WORKDIR /home/${USERNAME}
# USER $USERNAME

# Install git
RUN DEBIAN_FRONTEND=noninteractive apt update
RUN DEBIAN_FRONTEND=noninteractive apt install -y git

# Setup requirements
COPY requirements.txt /root/
RUN python3 -m pip install -r /root/requirements.txt
RUN rm /root/requirements.txt