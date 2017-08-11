

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

  def likes
    # look through all of the likes
    Like.all.select do |like|
      like.user == self
    end
    # return a collection of only the likes that belong to this user
  end

  def like_tweet(tweet)
    Like.new(self, tweet)
  end

  def liked_tweets
    # return an array of all the tweets a user has liked
    self.likes.map do |like|
      like.tweet
    end

  end


end
