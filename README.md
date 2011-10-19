##Introduction

This is an example of infinite scrolling using [Spine](http://spinejs.com) and Rails.

You can find a live demo [here](http://spine-infinite.herokuapp.com/).

##Source

The files you need to inspect are:

* `app/assets/javascripts/app/models/page.coffee`
* `app/assets/javascripts/app/controllers/pages.coffee`
* `app/controllers/pages_controller.rb`

##Usage

    bundle install
    rake db:setup
    rake db:seed
    
    rails server thin
    
    open http://localhost:3000