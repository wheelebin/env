# ${SUDO}apt-get -y update
# ${SUDO}apt-get -y install ca-certificates curl
# ${SUDO}install -m 0755 -d /etc/apt/keyrings
# ${SUDO}curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
# ${SUDO}chmod a+r /etc/apt/keyrings/docker.asc
#
# # Add the repository to Apt sources:
# echo \
#   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
#   $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
#   ${SUDO}tee /etc/apt/sources.list.d/docker.list > /dev/null
# ${SUDO}apt-get -y update
#
# ## Install
# ${SUDO}apt-get -y install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
