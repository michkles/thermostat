require 'sinatra/base'
require_relative 'data_mapper_setup'
require_relative 'thermostat'

class Thermostat < Sinatra::Base


  enable :sessions
  register Sinatra::Flash
  register Sinatra::Partial
  use Rack::MethodOverride
  set :session_secret, 'super secret'

end
