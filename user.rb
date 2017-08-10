

class User

  attr_reader :username


  def initialize(username)
    @username = username
  end


  def tweets
    # look through all of the tweets
    # return a collection of only the tweets that belong to this user
  end

  def post_tweet(message)
    # tweet = Tweet.new(message, self)
    # @tweets << tweet
  end




end
