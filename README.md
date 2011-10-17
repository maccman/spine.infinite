##Introduction

This is an example of infinite scrolling using [Spine](http://spinejs.com) and Rails.

##Source

The files you need to inspect are:

* `app/assets/javascripts/app/model/page.rb`
* `app/assets/javascripts/app/controllers/pages.rb`

##Usage

    bundle install
    rake db:setup
    rake db:seed
    
    rails server thin
    
    open http://localhost:3000