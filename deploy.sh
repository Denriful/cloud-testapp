#! /bin/bash

wget -O - https://raw.githubusercontent.com/Denriful/cloud-testapp/master/install_ruby.sh | bash

wget -O - https://raw.githubusercontent.com/Denriful/cloud-testapp/master/install_mongodb.sh | bash

git clone -b monolith https://github.com/express42/reddit.git

# sudo cd /reddit && sudo bundle install

cd /reddit

sudo bundle install

sudo puma -d

sudo apt install mc