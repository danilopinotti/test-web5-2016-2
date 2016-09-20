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

  def test_weight_kg_to_kg
    get '/weight/kg/51.0/kg'
    assert_equal 200, last_response.status
    assert_equal '{"weight":51.0}', last_response.body
  end

  def test_weight_kg_to_g
    get '/weight/kg/3.0/g'
    assert_equal 200, last_response.status
    assert_equal '{"weight":3000.0}', last_response.body
  end

  def test_weight_kg_to_ton
    get '/weight/kg/59.0/ton'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.059}', last_response.body
  end

  def test_weight_kg_to_po
    get '/weight/kg/33.0/po'
    assert_equal 200, last_response.status
    assert_equal '{"weight":72.7518}', last_response.body
  end

  def test_weight_kg_to_oz
    get '/weight/kg/94.0/oz'
    assert_equal 200, last_response.status
    assert_equal '{"weight":3315.756}', last_response.body
  end

  def test_weight_kg_to_ct
    get '/weight/kg/74.0/ct'
    assert_equal 200, last_response.status
    assert_equal '{"weight":370000.0}', last_response.body
  end

  def test_weight_g_to_kg
    get '/weight/g/29.0/kg'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.029}', last_response.body
  end

  def test_weight_g_to_g
    get '/weight/g/42.0/g'
    assert_equal 200, last_response.status
    assert_equal '{"weight":42.0}', last_response.body
  end

  def test_weight_g_to_ton
    get '/weight/g/25.0/ton'
    assert_equal 200, last_response.status
    assert_equal '{"weight":3.0e-05}', last_response.body
  end

  def test_weight_g_to_po
    get '/weight/g/14.0/po'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.03086}', last_response.body
  end

  def test_weight_g_to_oz
    get '/weight/g/26.0/oz'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.91712}', last_response.body
  end

  def test_weight_g_to_ct
    get '/weight/g/81.0/ct'
    assert_equal 200, last_response.status
    assert_equal '{"weight":405.0}', last_response.body
  end

  def test_weight_ton_to_kg
    get '/weight/ton/8.0/kg'
    assert_equal 200, last_response.status
    assert_equal '{"weight":8000.0}', last_response.body
  end

  def test_weight_ton_to_g
    get '/weight/ton/86.0/g'
    assert_equal 200, last_response.status
    assert_equal '{"weight":86000000.0}', last_response.body
  end

  def test_weight_ton_to_ton
    get '/weight/ton/9.0/ton'
    assert_equal 200, last_response.status
    assert_equal '{"weight":9.0}', last_response.body
  end

  def test_weight_ton_to_po
    get '/weight/ton/84.0/po'
    assert_equal 200, last_response.status
    assert_equal '{"weight":185186.4}', last_response.body
  end

  def test_weight_ton_to_oz
    get '/weight/ton/22.0/oz'
    assert_equal 200, last_response.status
    assert_equal '{"weight":776028.0}', last_response.body
  end

  def test_weight_ton_to_ct
    get '/weight/ton/90.0/ct'
    assert_equal 200, last_response.status
    assert_equal '{"weight":450000000.0}', last_response.body
  end

  def test_weight_po_to_kg
    get '/weight/po/10.0/kg'
    assert_equal 200, last_response.status
    assert_equal '{"weight":4.53597}', last_response.body
  end

  def test_weight_po_to_g
    get '/weight/po/46.0/g'
    assert_equal 200, last_response.status
    assert_equal '{"weight":20865.46312}', last_response.body
  end

  def test_weight_po_to_ton
    get '/weight/po/66.0/ton'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.02994}', last_response.body
  end

  def test_weight_po_to_po
    get '/weight/po/68.0/po'
    assert_equal 200, last_response.status
    assert_equal '{"weight":68.0}', last_response.body
  end

  def test_weight_po_to_oz
    get '/weight/po/49.0/oz'
    assert_equal 200, last_response.status
    assert_equal '{"weight":784.00889}', last_response.body
  end

  def test_weight_po_to_ct
    get '/weight/po/90.0/ct'
    assert_equal 200, last_response.status
    assert_equal '{"weight":204118.66098}', last_response.body
  end

  def test_weight_oz_to_kg
    get '/weight/oz/21.0/kg'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.59534}', last_response.body
  end

  def test_weight_oz_to_g
    get '/weight/oz/12.0/g'
    assert_equal 200, last_response.status
    assert_equal '{"weight":340.19391}', last_response.body
  end

  def test_weight_oz_to_ton
    get '/weight/oz/99.0/ton'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.00281}', last_response.body
  end

  def test_weight_oz_to_po
    get '/weight/oz/36.0/po'
    assert_equal 200, last_response.status
    assert_equal '{"weight":2.24997}', last_response.body
  end

  def test_weight_oz_to_oz
    get '/weight/oz/64.0/oz'
    assert_equal 200, last_response.status
    assert_equal '{"weight":64.0}', last_response.body
  end

  def test_weight_oz_to_ct
    get '/weight/oz/11.0/ct'
    assert_equal 200, last_response.status
    assert_equal '{"weight":1559.22209}', last_response.body
  end

  def test_weight_ct_to_kg
    get '/weight/ct/63.0/kg'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.0126}', last_response.body
  end

  def test_weight_ct_to_g
    get '/weight/ct/49.0/g'
    assert_equal 200, last_response.status
    assert_equal '{"weight":9.8}', last_response.body
  end

  def test_weight_ct_to_ton
    get '/weight/ct/73.0/ton'
    assert_equal 200, last_response.status
    assert_equal '{"weight":1.0e-05}', last_response.body
  end

  def test_weight_ct_to_po
    get '/weight/ct/12.0/po'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.00529}', last_response.body
  end

  def test_weight_ct_to_oz
    get '/weight/ct/17.0/oz'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.11993}', last_response.body
  end

  def test_weight_ct_to_ct
    get '/weight/ct/98.0/ct'
    assert_equal 200, last_response.status
    assert_equal '{"weight":98.0}', last_response.body
  end
end
