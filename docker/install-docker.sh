# Please refer to the resource as follows:
# https://docs.docker.com/engine/install/ubuntu/

# step 1: Set up the repository
sudo apt-get update

sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

# step 2: Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg


# step 3: Use the following command to set up the stable repository. To add the nightly or test repository, add the word nightly or test (or both) after the word stable in the commands below. Learn about nightly and test channels.
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# step 4: Install Docker Engine
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli 

# uninstall old  versions
# sudo apt-get remove docker docker-engine docker.io containerd runc