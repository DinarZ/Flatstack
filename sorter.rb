

while (params = data.gets) do
  user = User.new(params)
  user_collection.add user
end

user_collection.sort_by_age!

user_collection.export_for_file!
data = user_collection.open_data
####################
class User
  attr_accessible :age, :phone, :address, :comments
  def initialize

  end
end

class UserCollection
  def open_data
    #File open...

  end
  def close_data

  end
end


user_sollection = UserCollection.new
