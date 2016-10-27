class Settings

  include DataMapper::Resource

  property(:id, Serial)
  property(:temperature, Integer)
  property(:PSM, Boolean, :default => false)
  property(:city, String)

end
