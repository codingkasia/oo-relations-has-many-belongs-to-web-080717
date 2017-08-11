
class Like

  attr_accessor :user, :tweet

  ALL = []

  def self.all
    ALL
  end

  def initialize(user, tweet)
    @user = user
    @tweet = tweet
    ALL << self
  end

  
end
