<<<<<<< HEAD
require 'sinatra/base'
require 'data_mapper'
require_relative 'models/settings'



class Thermostat < Sinatra::Base


  get '/' do
    @settings = Settings.last
    if @settings.temperature < 18
      @usage = 'low-usage'
    elsif @settings.temperature <= 25
        @usage = 'medium-usage'
    else
      @usage = 'high-usage'
    end
    p @usage
    erb :'index'
  end

  post '/save' do
    Settings.create(city: params[:city], powersaving: params[:powersaving], temperature: params[:temperature])
  end

  run! if app_file == $0

end
=======
ENV['RACK_ENV'] ||= 'development'

require 'sinatra/base'
require 'sinatra/flash'
require 'sinatra/partial'

require_relative 'data_mapper_setup'

require_relative 'server'
require_relative 'thermostat'
>>>>>>> 0466774e2d231d01ffd50b28c8eae8c62d45cc67
