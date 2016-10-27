<<<<<<< HEAD
require 'sinatra/base'
require_relative 'data_mapper_setup'
require_relative 'thermostat'

class Thermostat < Sinatra::Base
=======
class Chitter < Sinatra::Base
>>>>>>> 8165ad607528ee2e4392a1e01a77ccd7f6fa04dc

  enable :sessions
  register Sinatra::Flash
  register Sinatra::Partial
  use Rack::MethodOverride
  set :session_secret, 'super secret'
<<<<<<< HEAD



 # set :partial_template_engine, :erb
 #
 # enable :partial_underscores
 #
 # helpers do
 #   def current_user
 #     @current_user ||= User.get(session[:user_id])
 #   end
 # end
=======
  set :partial_template_engine, :erb

  enable :partial_underscores

  helpers do
    def current_user
      @current_user ||= User.get(session[:user_id])
    end
  end
>>>>>>> 8165ad607528ee2e4392a1e01a77ccd7f6fa04dc
end
