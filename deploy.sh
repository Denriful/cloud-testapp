#! /bin/bash

wget -O - https://raw.githubusercontent.com/Denriful/cloud-testapp/master/install_ruby.sh | bash

wget -O - https://raw.githubusercontent.com/Denriful/cloud-testapp/master/install_mongodb.sh | bash

git clone -b monolith https://github.com/express42/reddit.git

# sudo cd /reddit && sudo bundle install

cd /reddit

touch deploy.log

echo 'current dir after "cd" command: '$PWD > deploy.log

sudo bundle install

echo 'bundle install exit status: '$? >> deploy.log

sudo puma -d

echo 'puma install exit status: '$? >> deploy.log

sudo apt install mc

echo 'mc install exit status: '$? >> deploy.log
