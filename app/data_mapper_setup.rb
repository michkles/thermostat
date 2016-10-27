require 'data_mapper'
require 'dm-postgres-adapter'
<<<<<<< HEAD
require 'dm-migrations'
require 'sinatra/flash'
=======
require 'sinatra/partial'

require_relative 'models/setting'
>>>>>>> 8165ad607528ee2e4392a1e01a77ccd7f6fa04dc

DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/thermostat_#{ENV['RACK_ENV']}")
DataMapper.finalize
DataMapper.auto_upgrade!
