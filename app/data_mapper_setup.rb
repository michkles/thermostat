require 'data_mapper'
require 'dm-postgres-adapter'
require 'sinatra/partial'

require_relative 'models/setting'

DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/thermostat_#{ENV['RACK_ENV']}")
DataMapper.finalize
DataMapper.auto_upgrade!
