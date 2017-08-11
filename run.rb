require 'pry'
require_relative './user'
require_relative './tweet'
require_relative './like'



coffee_dad = User.new('coffee_dad')
other_user = User.new('some_user')
tea_uncle = User.new('tea_uncle')

first_coffee_tweet = coffee_dad.post_tweet('great coffee')
second_coffee_tweet = coffee_dad.post_tweet('having coffee')
other_user.post_tweet('my first tweet')
other_user.post_tweet('my second tweet')
coffee_dad.post_tweet('#coffee')

other_user.like_tweet(first_coffee_tweet)
tea_uncle.like_tweet(first_coffee_tweet)
tea_uncle.like_tweet(second_coffee_tweet)




binding.pry

"hi"
