class Setting

  include DataMapper::Resource

  property(:id, Serial)
  # property(:temperature, String)
  # property(:PSM, String)
  property(:city, String)

end
