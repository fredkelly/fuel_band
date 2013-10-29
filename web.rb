require 'sinatra'
require './fuel.rb'
require 'awesome_print'

get '/' do
  fuel = FuelBand.new
  ap fuel.stats.to_s
end
