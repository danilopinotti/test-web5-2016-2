require_relative '../test_helper'
require_relative '../../app'

# => Funcional por que estamos testando respostas HTTP e os Controllers
# => No mínimo 2 assert_equal: Um para a resposta HTTP e outra pra funcionalidade
class WeightTest < Minitest::Test
  def app
    App
  end

  def test_get_home
    get '/'
    assert_equal 200, last_response.status
  end

  def test_simple_velocity
    get '/weight/kg/100/ton'
    assert_equal 200, last_response.status
    assert_equal '{weight: 0.1}', last_response.body
  end

end
