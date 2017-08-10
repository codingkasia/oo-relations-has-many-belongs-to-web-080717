
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



end
