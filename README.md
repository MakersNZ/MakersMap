Nz Makers
================

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

Generated with the [rails_apps_composer](https://github.com/RailsApps/rails_apps_composer) gem.


Getting Started
---------------
This application requires:

- Ruby 2.2.1
- Rails 4.2.3
- Postgres
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
- setup rvm for project: `touch .ruby-version; touch .ruby-gemset`
- edit these new files to specify which ruby version you want (ruby-2.2.1) and which gemset name (maker_map_or_whatever_you_want)
- let rvm pickup the settings change: `cd .`
- install bundler `gem install bundler`
- bundle all the gems `bundle`
- configure database connection inside: config/database.yml
- create new database: `rake db:create`
- run database migrations `rake db:migrate`
- seed starting data `rake db:seed`
- FIRE UP THE APP `rails server`
- Check it works in your browser [http://localhost:3000](http://localhost:3000)
- Make changes, reload browser to see them happen

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
