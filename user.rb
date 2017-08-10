

class User

  attr_reader :username


  def initialize(username)
    @username = username
  end



  def tweets
    # look through all of the tweets
    Tweet.all.select do |tweet|
      tweet.user == self
    end
    # return a collection of only the tweets that belong to this user
  end

  def post_tweet(message)
    Tweet.new(message, self)
    # @tweets << tweet
  end


end
