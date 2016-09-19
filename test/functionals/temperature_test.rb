require_relative '../test_helper'
require_relative '../../app'

# => Funcional por que estamos testando respostas HTTP e os Controllers
# => No mínimo 2 assert_equal: Um para a resposta HTTP e outra pra funcionalidade
class TemperatureTest < Minitest::Test
  def app
    App
  end

  def test_get_home
    get '/'
    assert_equal 200, last_response.status
  end

  def test_get_more
    get '/more'
    assert_equal 200, last_response.status
  end

  def test_get_temperature
    get '/temperature/celsius/38.9/in_kelvin'
    assert_equal 200, last_response.status
    assert_equal '{temp: 38.9}', last_response.body
  end

end
