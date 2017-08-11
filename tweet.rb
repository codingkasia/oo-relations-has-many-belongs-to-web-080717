
class Tweet

  attr_reader(:message, :user)


  ALL = []

  def self.all
    ALL
  end


  def initialize(message, user)
    @message = message
    @user = user
    # add this newly created Instance into our ALL array
    ALL << self
  end


  def username
    user.username
  end

  def likes
    # look through all of the likes
    Like.all.select do |like|
      like.tweet == self
    end
    # return a collection of only the likes that belong to this tweet
  end

  def likers
    # return an array of all the users who have liked this tweet
    self.likes.map do |like|
      like.tweet
    end
  end




end
