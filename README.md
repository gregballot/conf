# Conf

```sh
sudo apt update && sudo apt upgrade -y
sudo apt install -y git openssh-client
ssh-keygen -t rsa -b 4096 -C "gregballot@users.noreply.github.com"
cat ~/.ssh/id_rsa.pub
echo copy this key to github settings
read -p "Press enter when done" 
git clone git@github.com:gregballot/conf.git
cd conf && ./setup.sh
```
