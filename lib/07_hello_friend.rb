class Friend
  #TODO: your code goes here!
  #setting argument to a default value allows for optional argument
  def greeting(who = nil)
    if (who)
        "Hello, #{who}!"
    else
        "Hello!" 
    end
  end
end
