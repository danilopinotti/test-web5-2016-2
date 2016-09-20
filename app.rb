require 'sinatra'
require 'json'
require_relative 'lib/temperature'
require_relative 'lib/weight'
require_relative 'lib/velocity'

# App
class App < Sinatra::Base
  def convert_temperature(to, from, value)
    content_type :json
    temp_convertion = Temperature::Temperature.new(value.to_f, to)
    { temp: temp_convertion.method("to_#{from}").call }.to_json
  end

  get '/' do
    "WEB5 exam!\nRoutes: /weight/unit_origin/value_to_convert/distinarion_unit"
  end

  get '/temperature/:to/:temperature/in_:from' do
    convert_temperature(params[:to], params[:from], params[:temperature].to_f)
  end

  get '/:conversion_type/:origin_unit/:value/:destination_unit' do
    content_type :json
    if params[:conversion_type] == 'weight'
      weight = Weight::Weight.new(params[:value], params[:origin_unit])
      { weight: weight.method("to_#{params[:destination_unit]}").call }
        .to_json

    elsif params[:conversion_type] == 'velocity'
      velocity = Velocity::Velocity.new(params[:value], params[:origin_unit])
      { velocity: velocity.method("to_#{params[:destination_unit]}").call }
        .to_json
    end
  end
end
