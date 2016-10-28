require 'sinatra/base'
require 'data_mapper'
require_relative 'models/setting'

class Thermostat < Sinatra::Base

  get '/' do
    erb :'index'
  end

  post '/save/city' do
    puts params.inspect
    setting = Setting.new(city: params[:city])
    setting.save
    redirect "/"
  end

  post '/save/temperature' do
    puts params.inspect
    setting = Setting.new(temperature: params[:temperature])
    setting.save
    redirect "/"
  end

  run! if app_file == $0

end
