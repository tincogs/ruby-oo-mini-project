require 'pry'
require_relative '../config/environment.rb'
Recipe.all
bob = User.new("Bob")
bob.add_recipe_card("steak",10,"Today")
bob.add_recipe_card("ham",5,"Yesterday")
binding.pry
