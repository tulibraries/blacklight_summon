# Blacklight Summon

A prototype app wrapping the Summon API in Blacklight 

# Getting Started

Get the rails app set up locally:

`git clone https://github.com/tulibraries/summon_blacklight`

`cd summon_blacklight`

`bundle install`

`bundle exec rails db:migrate`

Then copy `config/summon.yml.example` to `config/yml` and update the default 
`access_id` and `secret_key` with your Summon Api details.


Then start the rails server:

`bundle exec rails server`


