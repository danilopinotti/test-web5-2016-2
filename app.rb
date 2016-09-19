require 'sinatra'
require 'json'
require_relative 'lib/temperature'

# App
class App < Sinatra::Base
  def convert_temperature(to, from, value)
    content_type :json
    temp_convertion = Temperature::Temperature.new(value.to_f, to)
    { temp: temp_convertion.method("to_#{from}").call }.to_json
  end

  get '/' do
    "Put this in your pipe & smoke it!\n"
  end

  get '/temperature/:to/:temperature/in_:from' do
    convert_temperature(params[:to], params[:from], params[:temperature].to_f)
  end

end
