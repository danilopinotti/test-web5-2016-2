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

  get '/:conversion_type/:origin_unit/:value/:destination_unit' do
    if params[:conversion_type] == 'velocity'
      weight = Weight::Weight.new(params[:value], :destination_unit)
      { weight.method("to_#{params[:destination_unit]}").call }.to_json
    elsif params[:conversion_type] == 'weight'
      'hello w'
    end

  end

end
