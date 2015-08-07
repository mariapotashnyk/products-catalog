#= require angular/angular
#= require angular-ui-router/release/angular-ui-router
#= require ui-router-extras/release/ct-ui-router-extras.min
#= require angular-rails-templates.js.erb
#= require angularjs/rails/resource
#= require jquery
#= require jquery_ujs
#= require bootstrap-sass-official/assets/javascripts/bootstrap-sprockets
#= require angular-bootstrap/ui-bootstrap-tpls

## Libraries

#= require_tree ./libraries

## Application

#= require_tree ./modules
#= require app
#= require router
#= require_tree ./models
#= #require_tree ./services
#= require_tree ./controllers
#= require_tree ../templates