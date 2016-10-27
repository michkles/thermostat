class Thermostat < Sinatra::Base

  get '/' do
    erb :'index'
  end

  post '/' do
    Setting.create(temperature: params[:temperature],
    city: params[:city],
    PSM: params[:PSM])
  end

end
