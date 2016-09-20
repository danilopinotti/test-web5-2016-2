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

  def test_weight_ct_to_po_0
    get '/weight/ct/51.0/po'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.02249}', last_response.body
  end

  def test_weight_g_to_g_1
    get '/weight/g/59.0/g'
    assert_equal 200, last_response.status
    assert_equal '{"weight":59.0}', last_response.body
  end

  def test_weight_ct_to_ton_2
    get '/weight/ct/74.0/ton'
    assert_equal 200, last_response.status
    assert_equal '{"weight":1.0e-05}', last_response.body
  end

  def test_weight_ton_to_ct_3
    get '/weight/ton/25.0/ct'
    assert_equal 200, last_response.status
    assert_equal '{"weight":125000000.0}', last_response.body
  end

  def test_weight_kg_to_g_4
    get '/weight/kg/81.0/g'
    assert_equal 200, last_response.status
    assert_equal '{"weight":81000.0}', last_response.body
  end

  def test_weight_ct_to_ton_5
    get '/weight/ct/84.0/ton'
    assert_equal 200, last_response.status
    assert_equal '{"weight":2.0e-05}', last_response.body
  end

  def test_weight_ton_to_oz_6
    get '/weight/ton/10.0/oz'
    assert_equal 200, last_response.status
    assert_equal '{"weight":352740.0}', last_response.body
  end

  def test_weight_ton_to_ct_7
    get '/weight/ton/49.0/ct'
    assert_equal 200, last_response.status
    assert_equal '{"weight":245000000.0}', last_response.body
  end

  def test_weight_po_to_oz_8
    get '/weight/po/12.0/oz'
    assert_equal 200, last_response.status
    assert_equal '{"weight":192.00218}', last_response.body
  end

  def test_weight_po_to_g_9
    get '/weight/po/64.0/g'
    assert_equal 200, last_response.status
    assert_equal '{"weight":29030.20956}', last_response.body
  end

  def test_weight_g_to_g_10
    get '/weight/g/63.0/g'
    assert_equal 200, last_response.status
    assert_equal '{"weight":63.0}', last_response.body
  end

  def test_weight_oz_to_g_11
    get '/weight/oz/73.0/g'
    assert_equal 200, last_response.status
    assert_equal '{"weight":2069.51296}', last_response.body
  end

  def test_weight_ton_to_ct_12
    get '/weight/ton/17.0/ct'
    assert_equal 200, last_response.status
    assert_equal '{"weight":85000000.0}', last_response.body
  end

  def test_weight_ct_to_po_13
    get '/weight/ct/92.0/po'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.04056}', last_response.body
  end

  def test_weight_po_to_po_14
    get '/weight/po/92.0/po'
    assert_equal 200, last_response.status
    assert_equal '{"weight":92.0}', last_response.body
  end

  def test_weight_g_to_kg_15
    get '/weight/g/63.0/kg'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.063}', last_response.body
  end

  def test_weight_ct_to_ton_16
    get '/weight/ct/61.0/ton'
    assert_equal 200, last_response.status
    assert_equal '{"weight":1.0e-05}', last_response.body
  end

  def test_weight_g_to_ct_17
    get '/weight/g/24.0/ct'
    assert_equal 200, last_response.status
    assert_equal '{"weight":120.0}', last_response.body
  end

  def test_weight_kg_to_ton_18
    get '/weight/kg/41.0/ton'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.041}', last_response.body
  end

  def test_weight_ton_to_kg_19
    get '/weight/ton/19.0/kg'
    assert_equal 200, last_response.status
    assert_equal '{"weight":19000.0}', last_response.body
  end

  def test_weight_kg_to_g_20
    get '/weight/kg/86.0/g'
    assert_equal 200, last_response.status
    assert_equal '{"weight":86000.0}', last_response.body
  end

  def test_weight_ton_to_g_21
    get '/weight/ton/43.0/g'
    assert_equal 200, last_response.status
    assert_equal '{"weight":43000000.0}', last_response.body
  end

  def test_weight_po_to_kg_22
    get '/weight/po/37.0/kg'
    assert_equal 200, last_response.status
    assert_equal '{"weight":16.78309}', last_response.body
  end

  def test_weight_oz_to_ct_23
    get '/weight/oz/60.0/ct'
    assert_equal 200, last_response.status
    assert_equal '{"weight":8504.84776}', last_response.body
  end

  def test_weight_po_to_kg_24
    get '/weight/po/66.0/kg'
    assert_equal 200, last_response.status
    assert_equal '{"weight":29.9374}', last_response.body
  end

  def test_weight_g_to_ct_25
    get '/weight/g/23.0/ct'
    assert_equal 200, last_response.status
    assert_equal '{"weight":115.0}', last_response.body
  end

  def test_weight_oz_to_kg_26
    get '/weight/oz/59.0/kg'
    assert_equal 200, last_response.status
    assert_equal '{"weight":1.67262}', last_response.body
  end

  def test_weight_po_to_g_27
    get '/weight/po/64.0/g'
    assert_equal 200, last_response.status
    assert_equal '{"weight":29030.20956}', last_response.body
  end

  def test_weight_ton_to_ton_28
    get '/weight/ton/65.0/ton'
    assert_equal 200, last_response.status
    assert_equal '{"weight":65.0}', last_response.body
  end

  def test_weight_po_to_ct_29
    get '/weight/po/49.0/ct'
    assert_equal 200, last_response.status
    assert_equal '{"weight":111131.27098}', last_response.body
  end

  def test_weight_ton_to_kg_30
    get '/weight/ton/92.0/kg'
    assert_equal 200, last_response.status
    assert_equal '{"weight":92000.0}', last_response.body
  end

  def test_weight_ton_to_ct_31
    get '/weight/ton/26.0/ct'
    assert_equal 200, last_response.status
    assert_equal '{"weight":130000000.0}', last_response.body
  end

  def test_weight_g_to_oz_32
    get '/weight/g/20.0/oz'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.70548}', last_response.body
  end

  def test_weight_ton_to_kg_33
    get '/weight/ton/84.0/kg'
    assert_equal 200, last_response.status
    assert_equal '{"weight":84000.0}', last_response.body
  end

  def test_weight_g_to_g_34
    get '/weight/g/73.0/g'
    assert_equal 200, last_response.status
    assert_equal '{"weight":73.0}', last_response.body
  end

  def test_weight_po_to_ct_35
    get '/weight/po/86.0/ct'
    assert_equal 200, last_response.status
    assert_equal '{"weight":195046.72049}', last_response.body
  end

  def test_weight_kg_to_g_36
    get '/weight/kg/27.0/g'
    assert_equal 200, last_response.status
    assert_equal '{"weight":27000.0}', last_response.body
  end

  def test_weight_g_to_ct_37
    get '/weight/g/14.0/ct'
    assert_equal 200, last_response.status
    assert_equal '{"weight":70.0}', last_response.body
  end

  def test_weight_po_to_oz_38
    get '/weight/po/80.0/oz'
    assert_equal 200, last_response.status
    assert_equal '{"weight":1280.01452}', last_response.body
  end

  def test_weight_oz_to_oz_39
    get '/weight/oz/80.0/oz'
    assert_equal 200, last_response.status
    assert_equal '{"weight":80.0}', last_response.body
  end

  def test_weight_kg_to_kg_40
    get '/weight/kg/82.0/kg'
    assert_equal 200, last_response.status
    assert_equal '{"weight":82.0}', last_response.body
  end

  def test_weight_ct_to_po_41
    get '/weight/ct/56.0/po'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.02469}', last_response.body
  end

  def test_weight_g_to_oz_42
    get '/weight/g/66.0/oz'
    assert_equal 200, last_response.status
    assert_equal '{"weight":2.32808}', last_response.body
  end

  def test_weight_oz_to_kg_43
    get '/weight/oz/44.0/kg'
    assert_equal 200, last_response.status
    assert_equal '{"weight":1.24738}', last_response.body
  end

  def test_weight_oz_to_ton_44
    get '/weight/oz/78.0/ton'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.00221}', last_response.body
  end

  def test_weight_g_to_po_45
    get '/weight/g/35.0/po'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.07716}', last_response.body
  end

  def test_weight_ct_to_kg_46
    get '/weight/ct/3.0/kg'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.0006}', last_response.body
  end

  def test_weight_g_to_oz_47
    get '/weight/g/69.0/oz'
    assert_equal 200, last_response.status
    assert_equal '{"weight":2.43391}', last_response.body
  end

  def test_weight_oz_to_po_48
    get '/weight/oz/15.0/po'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.93749}', last_response.body
  end

  def test_weight_ton_to_ct_49
    get '/weight/ton/70.0/ct'
    assert_equal 200, last_response.status
    assert_equal '{"weight":350000000.0}', last_response.body
  end

  def test_weight_g_to_g_50
    get '/weight/g/35.0/g'
    assert_equal 200, last_response.status
    assert_equal '{"weight":35.0}', last_response.body
  end

  def test_weight_g_to_oz_51
    get '/weight/g/38.0/oz'
    assert_equal 200, last_response.status
    assert_equal '{"weight":1.34041}', last_response.body
  end

  def test_weight_ton_to_po_52
    get '/weight/ton/83.0/po'
    assert_equal 200, last_response.status
    assert_equal '{"weight":182981.8}', last_response.body
  end

  def test_weight_ct_to_ct_53
    get '/weight/ct/58.0/ct'
    assert_equal 200, last_response.status
    assert_equal '{"weight":58.0}', last_response.body
  end

  def test_weight_po_to_po_54
    get '/weight/po/19.0/po'
    assert_equal 200, last_response.status
    assert_equal '{"weight":19.0}', last_response.body
  end

  def test_weight_po_to_ton_55
    get '/weight/po/95.0/ton'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.04309}', last_response.body
  end

  def test_weight_g_to_g_56
    get '/weight/g/48.0/g'
    assert_equal 200, last_response.status
    assert_equal '{"weight":48.0}', last_response.body
  end

  def test_weight_po_to_oz_57
    get '/weight/po/26.0/oz'
    assert_equal 200, last_response.status
    assert_equal '{"weight":416.00472}', last_response.body
  end

  def test_weight_ct_to_oz_58
    get '/weight/ct/18.0/oz'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.12699}', last_response.body
  end

  def test_weight_kg_to_ton_59
    get '/weight/kg/17.0/ton'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.017}', last_response.body
  end

  def test_weight_oz_to_po_60
    get '/weight/oz/2.0/po'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.125}', last_response.body
  end

  def test_weight_ct_to_po_61
    get '/weight/ct/11.0/po'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.00485}', last_response.body
  end

  def test_weight_g_to_kg_62
    get '/weight/g/13.0/kg'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.013}', last_response.body
  end

  def test_weight_ton_to_g_63
    get '/weight/ton/53.0/g'
    assert_equal 200, last_response.status
    assert_equal '{"weight":53000000.0}', last_response.body
  end

  def test_weight_oz_to_ct_64
    get '/weight/oz/47.0/ct'
    assert_equal 200, last_response.status
    assert_equal '{"weight":6662.13075}', last_response.body
  end

  def test_weight_kg_to_kg_65
    get '/weight/kg/73.0/kg'
    assert_equal 200, last_response.status
    assert_equal '{"weight":73.0}', last_response.body
  end

  def test_weight_ct_to_ton_66
    get '/weight/ct/60.0/ton'
    assert_equal 200, last_response.status
    assert_equal '{"weight":1.0e-05}', last_response.body
  end

  def test_weight_oz_to_ton_67
    get '/weight/oz/96.0/ton'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.00272}', last_response.body
  end

  def test_weight_kg_to_kg_68
    get '/weight/kg/19.0/kg'
    assert_equal 200, last_response.status
    assert_equal '{"weight":19.0}', last_response.body
  end

  def test_weight_ct_to_ct_69
    get '/weight/ct/52.0/ct'
    assert_equal 200, last_response.status
    assert_equal '{"weight":52.0}', last_response.body
  end

  def test_weight_ct_to_kg_70
    get '/weight/ct/39.0/kg'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.0078}', last_response.body
  end

  def test_weight_ct_to_oz_71
    get '/weight/ct/63.0/oz'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.44445}', last_response.body
  end

  def test_weight_g_to_g_72
    get '/weight/g/84.0/g'
    assert_equal 200, last_response.status
    assert_equal '{"weight":84.0}', last_response.body
  end

  def test_weight_ct_to_ton_73
    get '/weight/ct/57.0/ton'
    assert_equal 200, last_response.status
    assert_equal '{"weight":1.0e-05}', last_response.body
  end

  def test_weight_kg_to_ton_74
    get '/weight/kg/63.0/ton'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.063}', last_response.body
  end

  def test_weight_g_to_ton_75
    get '/weight/g/26.0/ton'
    assert_equal 200, last_response.status
    assert_equal '{"weight":3.0e-05}', last_response.body
  end

  def test_weight_oz_to_ct_76
    get '/weight/oz/75.0/ct'
    assert_equal 200, last_response.status
    assert_equal '{"weight":10631.0597}', last_response.body
  end

  def test_weight_ton_to_ct_77
    get '/weight/ton/93.0/ct'
    assert_equal 200, last_response.status
    assert_equal '{"weight":465000000.0}', last_response.body
  end

  def test_weight_po_to_ton_78
    get '/weight/po/16.0/ton'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.00726}', last_response.body
  end

  def test_weight_ton_to_ton_79
    get '/weight/ton/25.0/ton'
    assert_equal 200, last_response.status
    assert_equal '{"weight":25.0}', last_response.body
  end

  def test_weight_g_to_ct_80
    get '/weight/g/87.0/ct'
    assert_equal 200, last_response.status
    assert_equal '{"weight":435.0}', last_response.body
  end

  def test_weight_g_to_oz_81
    get '/weight/g/45.0/oz'
    assert_equal 200, last_response.status
    assert_equal '{"weight":1.58733}', last_response.body
  end

  def test_weight_ct_to_po_82
    get '/weight/ct/25.0/po'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.01102}', last_response.body
  end

  def test_weight_ct_to_po_83
    get '/weight/ct/80.0/po'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.03527}', last_response.body
  end

  def test_weight_ton_to_oz_84
    get '/weight/ton/48.0/oz'
    assert_equal 200, last_response.status
    assert_equal '{"weight":1693152.0}', last_response.body
  end

  def test_weight_po_to_ct_85
    get '/weight/po/85.0/ct'
    assert_equal 200, last_response.status
    assert_equal '{"weight":192778.73537}', last_response.body
  end

  def test_weight_ton_to_oz_86
    get '/weight/ton/62.0/oz'
    assert_equal 200, last_response.status
    assert_equal '{"weight":2186988.0}', last_response.body
  end

  def test_weight_ct_to_ct_87
    get '/weight/ct/58.0/ct'
    assert_equal 200, last_response.status
    assert_equal '{"weight":58.0}', last_response.body
  end

  def test_weight_kg_to_po_88
    get '/weight/kg/31.0/po'
    assert_equal 200, last_response.status
    assert_equal '{"weight":68.3426}', last_response.body
  end

  def test_weight_ct_to_ton_89
    get '/weight/ct/35.0/ton'
    assert_equal 200, last_response.status
    assert_equal '{"weight":1.0e-05}', last_response.body
  end

  def test_weight_oz_to_ton_90
    get '/weight/oz/3.0/ton'
    assert_equal 200, last_response.status
    assert_equal '{"weight":9.0e-05}', last_response.body
  end

  def test_weight_oz_to_kg_91
    get '/weight/oz/42.0/kg'
    assert_equal 200, last_response.status
    assert_equal '{"weight":1.19068}', last_response.body
  end

  def test_weight_ct_to_g_92
    get '/weight/ct/90.0/g'
    assert_equal 200, last_response.status
    assert_equal '{"weight":18.0}', last_response.body
  end

  def test_weight_kg_to_po_93
    get '/weight/kg/21.0/po'
    assert_equal 200, last_response.status
    assert_equal '{"weight":46.2966}', last_response.body
  end

  def test_weight_oz_to_po_94
    get '/weight/oz/16.0/po'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.99999}', last_response.body
  end

  def test_weight_g_to_ton_95
    get '/weight/g/41.0/ton'
    assert_equal 200, last_response.status
    assert_equal '{"weight":4.0e-05}', last_response.body
  end

  def test_weight_po_to_kg_96
    get '/weight/po/7.0/kg'
    assert_equal 200, last_response.status
    assert_equal '{"weight":3.17518}', last_response.body
  end

  def test_weight_ct_to_g_97
    get '/weight/ct/49.0/g'
    assert_equal 200, last_response.status
    assert_equal '{"weight":9.8}', last_response.body
  end

  def test_weight_oz_to_ct_98
    get '/weight/oz/33.0/ct'
    assert_equal 200, last_response.status
    assert_equal '{"weight":4677.66627}', last_response.body
  end

  def test_weight_ton_to_ct_99
    get '/weight/ton/24.0/ct'
    assert_equal 200, last_response.status
    assert_equal '{"weight":120000000.0}', last_response.body
  end

  def test_weight_po_to_po_100
    get '/weight/po/72.0/po'
    assert_equal 200, last_response.status
    assert_equal '{"weight":72.0}', last_response.body
  end
end
