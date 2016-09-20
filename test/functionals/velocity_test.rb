require_relative '../test_helper'
require_relative '../../app'

# => Funcional por que estamos testando respostas HTTP e os Controllers
# => No mínimo 2 assert_equal: Um para a resposta HTTP e outra pra funcionalidade
class VelocityTest < Minitest::Test
  def app
    App
  end

  def test_get_home
    get '/'
    assert_equal 200, last_response.status
  end

  def test_velocity_ms_to_ms
    get '/velocity/ms/51.0/ms'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":51.0}', last_response.body
  end

  def test_velocity_ms_to_kh
    get '/velocity/ms/3.0/kh'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":10.8}', last_response.body
  end

  def test_velocity_ms_to_mph
    get '/velocity/ms/59.0/mph'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":131.98}', last_response.body
  end

  def test_velocity_ms_to_knot
    get '/velocity/ms/33.0/knot'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":64.15}', last_response.body
  end

  def test_velocity_ms_to_fts
    get '/velocity/ms/94.0/fts'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":308.4}', last_response.body
  end

  def test_velocity_kh_to_ms
    get '/velocity/kh/74.0/ms'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":20.56}', last_response.body
  end

  def test_velocity_kh_to_kh
    get '/velocity/kh/29.0/kh'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":29.0}', last_response.body
  end

  def test_velocity_kh_to_mph
    get '/velocity/kh/42.0/mph'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":26.1}', last_response.body
  end

  def test_velocity_kh_to_knot
    get '/velocity/kh/25.0/knot'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":13.5}', last_response.body
  end

  def test_velocity_kh_to_fts
    get '/velocity/kh/14.0/fts'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":12.76}', last_response.body
  end

  def test_velocity_mph_to_ms
    get '/velocity/mph/26.0/ms'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":11.62}', last_response.body
  end

  def test_velocity_mph_to_kh
    get '/velocity/mph/81.0/kh'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":130.36}', last_response.body
  end

  def test_velocity_mph_to_mph
    get '/velocity/mph/8.0/mph'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":8.0}', last_response.body
  end

  def test_velocity_mph_to_knot
    get '/velocity/mph/86.0/knot'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":74.73}', last_response.body
  end

  def test_velocity_mph_to_fts
    get '/velocity/mph/9.0/fts'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":13.2}', last_response.body
  end

  def test_velocity_knot_to_ms
    get '/velocity/knot/84.0/ms'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":43.21}', last_response.body
  end

  def test_velocity_knot_to_kh
    get '/velocity/knot/22.0/kh'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":40.74}', last_response.body
  end

  def test_velocity_knot_to_mph
    get '/velocity/knot/90.0/mph'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":103.57}', last_response.body
  end

  def test_velocity_knot_to_knot
    get '/velocity/knot/10.0/knot'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":10.0}', last_response.body
  end

  def test_velocity_knot_to_fts
    get '/velocity/knot/46.0/fts'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":77.64}', last_response.body
  end

  def test_velocity_fts_to_ms
    get '/velocity/fts/66.0/ms'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":20.12}', last_response.body
  end

  def test_velocity_fts_to_kh
    get '/velocity/fts/68.0/kh'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":74.61}', last_response.body
  end

  def test_velocity_fts_to_mph
    get '/velocity/fts/49.0/mph'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":33.41}', last_response.body
  end

  def test_velocity_fts_to_knot
    get '/velocity/fts/90.0/knot'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":53.32}', last_response.body
  end

  def test_velocity_fts_to_fts
    get '/velocity/fts/21.0/fts'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":21.0}', last_response.body
  end
end
