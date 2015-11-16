#!/bin/bash

cd /vagrant/

echo 'For the Final Steps run "vagrant ssh" to login to the VM. And do the following:'
echo 'cd /vagrant/'
echo 'gem install bundler'
echo 'bundle'
echo 'rake db:create'
echo 'rake db:migrate'
echo 'rake db:seed'

echo 'To start the server run:'
echo 'rails server -b0.0.0.0'

