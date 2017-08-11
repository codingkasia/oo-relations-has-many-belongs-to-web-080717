require 'pry'
require_relative './user'
require_relative './tweet'
require_relative './like'



coffee_dad = User.new('coffee_dad')
other_user = User.new('some_user')

coffee_dad.post_tweet('great coffee')
coffee_dad.post_tweet('having coffee')
other_user.post_tweet('my first tweet')
other_user.post_tweet('my second tweet')
coffee_dad.post_tweet('#coffee')




binding.pry

"hi"
