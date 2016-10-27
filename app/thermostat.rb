require 'sinatra'

class Thermostat < Sinatra::Base

  get '/' do
    erb :'index'
  end

  post '/' do
    puts params.inspect
    setting = Setting.new(city: params[:city])
    setting.save
  end

  run! if app_file == $0

end
