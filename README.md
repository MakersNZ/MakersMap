Nz Makers
================

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

Generated with the [rails_apps_composer](https://github.com/RailsApps/rails_apps_composer) gem.


Getting Started
---------------
This application requires:

- Ruby 2.2.1
- Rails 4.2.3
- Postgres 9.4
- ElasticSearch
- Linux or MacOS

##### Mac OS Quickstart
- install homebrew: `ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
- postgres: `brew install postgres`
- elasticsearch: `brew install elasticsearch`
- git: `brew install git`
- do setup in General Quickstart

##### Linux Quickstart
- postgres: `sudo apt-get update`
`sudo apt-get install postgresql postgresql-contrib`
- elasticsearch: [https://www.digitalocean.com/community/tutorials/how-to-install-elasticsearch-on-an-ubuntu-vps](https://www.digitalocean.com/community/tutorials/how-to-install-elasticsearch-on-an-ubuntu-vps)
- git: `sudo apt-get install git`

##### General Quickstart
- install rvm [https://rvm.io/rvm/install#quick-guided-install](https://rvm.io/rvm/install#quick-guided-install)
- install ruby with rvm `rvm install ruby-2.2.1`
- connect your git with github (skip if done) [https://help.github.com/articles/set-up-git/](https://help.github.com/articles/set-up-git/)
- checkout project somewhere: `git clone git@github.com:MakersNZ/MakersMap.git`
- move to project directory: `cd MakersMap`
- install bundler `gem install bundler`
- bundle all the gems `bundle`
- configure database connection inside: config/database.yml
- create new database: `rake db:create`
- run database migrations `rake db:migrate`
- seed starting data `rake db:seed`
- FIRE UP THE APP `rails server`
- Check it works in your browser [http://localhost:3000](http://localhost:3000)
- Make changes, reload browser to see them happen

#####Vagrant

- Install Vagrant and Virtualbox, the steps would depend on your OS.
- Install the vbguest plugin by running **vagrant plugin install vagrant-vbguest**
- Start vagrant with **Vagrant up**
- Login to VM: **Vagrant ssh**
- Goto the app: **cd /vagrant/**
- Install bundler: **gem install bundler"
- bundle all the gems **bundle**
- create new database: **rake db:create**
- run database migrations: **rake db:migrate**
- seed the starting data: **rake db:seed**
- Start it: **rails server -b0.0.0.0**
- Check if it works in your browser [http://localhost:3000](http://localhost:3000)

Documentation and Support
-------------------------

Issues
-------------

Similar Projects
----------------
We are unique like a snowflake.

Contributing
------------
Please fork the repo to your own github account, make a new branch for your feature/changes and then make a pull request to have it merged back into this repo. 

Credits
-------

License
-------
