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

  def test_weight_po_to_ton_0
    get '/weight/po/51.0/ton'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.02313}', last_response.body
  end

  def test_weight_g_to_g_1
    get '/weight/g/59.0/g'
    assert_equal 200, last_response.status
    assert_equal '{"weight":59.0}', last_response.body
  end

  def test_weight_ton_to_g_2
    get '/weight/ton/74.0/g'
    assert_equal 200, last_response.status
    assert_equal '{"weight":74000000.0}', last_response.body
  end

  def test_weight_ton_to_kg_3
    get '/weight/ton/14.0/kg'
    assert_equal 200, last_response.status
    assert_equal '{"weight":14000.0}', last_response.body
  end

  def test_weight_kg_to_g_4
    get '/weight/kg/81.0/g'
    assert_equal 200, last_response.status
    assert_equal '{"weight":81000.0}', last_response.body
  end

  def test_weight_ton_to_ton_5
    get '/weight/ton/84.0/ton'
    assert_equal 200, last_response.status
    assert_equal '{"weight":84.0}', last_response.body
  end

  def test_weight_ton_to_oz_6
    get '/weight/ton/46.0/oz'
    assert_equal 200, last_response.status
    assert_equal '{"weight":1622604.0}', last_response.body
  end

  def test_weight_ton_to_oz_7
    get '/weight/ton/49.0/oz'
    assert_equal 200, last_response.status
    assert_equal '{"weight":1728426.0}', last_response.body
  end

  def test_weight_oz_to_kg_8
    get '/weight/oz/99.0/kg'
    assert_equal 200, last_response.status
    assert_equal '{"weight":2.8066}', last_response.body
  end

  def test_weight_g_to_g_9
    get '/weight/g/11.0/g'
    assert_equal 200, last_response.status
    assert_equal '{"weight":11.0}', last_response.body
  end

  def test_weight_oz_to_g_10
    get '/weight/oz/73.0/g'
    assert_equal 200, last_response.status
    assert_equal '{"weight":2069.51296}', last_response.body
  end

  def test_weight_ton_to_oz_11
    get '/weight/ton/17.0/oz'
    assert_equal 200, last_response.status
    assert_equal '{"weight":599658.0}', last_response.body
  end

  def test_weight_po_to_oz_12
    get '/weight/po/87.0/oz'
    assert_equal 200, last_response.status
    assert_equal '{"weight":1392.01579}', last_response.body
  end

  def test_weight_po_to_po_13
    get '/weight/po/46.0/po'
    assert_equal 200, last_response.status
    assert_equal '{"weight":46.0}', last_response.body
  end

  def test_weight_g_to_kg_14
    get '/weight/g/63.0/kg'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.063}', last_response.body
  end

  def test_weight_ton_to_kg_15
    get '/weight/ton/61.0/kg'
    assert_equal 200, last_response.status
    assert_equal '{"weight":61000.0}', last_response.body
  end

  def test_weight_g_to_kg_16
    get '/weight/g/81.0/kg'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.081}', last_response.body
  end

  def test_weight_po_to_ton_17
    get '/weight/po/10.0/ton'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.00454}', last_response.body
  end

  def test_weight_kg_to_g_18
    get '/weight/kg/80.0/g'
    assert_equal 200, last_response.status
    assert_equal '{"weight":80000.0}', last_response.body
  end

  def test_weight_ton_to_g_19
    get '/weight/ton/43.0/g'
    assert_equal 200, last_response.status
    assert_equal '{"weight":43000000.0}', last_response.body
  end

  def test_weight_po_to_kg_20
    get '/weight/po/37.0/kg'
    assert_equal 200, last_response.status
    assert_equal '{"weight":16.78309}', last_response.body
  end

  def test_weight_oz_to_ton_21
    get '/weight/oz/60.0/ton'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.0017}', last_response.body
  end

  def test_weight_kg_to_g_22
    get '/weight/kg/27.0/g'
    assert_equal 200, last_response.status
    assert_equal '{"weight":27000.0}', last_response.body
  end

  def test_weight_oz_to_kg_23
    get '/weight/oz/59.0/kg'
    assert_equal 200, last_response.status
    assert_equal '{"weight":1.67262}', last_response.body
  end

  def test_weight_po_to_g_24
    get '/weight/po/64.0/g'
    assert_equal 200, last_response.status
    assert_equal '{"weight":29030.20956}', last_response.body
  end

  def test_weight_ton_to_ton_25
    get '/weight/ton/65.0/ton'
    assert_equal 200, last_response.status
    assert_equal '{"weight":65.0}', last_response.body
  end

  def test_weight_po_to_oz_26
    get '/weight/po/49.0/oz'
    assert_equal 200, last_response.status
    assert_equal '{"weight":784.00889}', last_response.body
  end

  def test_weight_ton_to_ton_27
    get '/weight/ton/56.0/ton'
    assert_equal 200, last_response.status
    assert_equal '{"weight":56.0}', last_response.body
  end

  def test_weight_oz_to_g_28
    get '/weight/oz/71.0/g'
    assert_equal 200, last_response.status
    assert_equal '{"weight":2012.81397}', last_response.body
  end

  def test_weight_oz_to_ton_29
    get '/weight/oz/20.0/ton'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.00057}', last_response.body
  end

  def test_weight_g_to_g_30
    get '/weight/g/40.0/g'
    assert_equal 200, last_response.status
    assert_equal '{"weight":40.0}', last_response.body
  end

  def test_weight_po_to_po_31
    get '/weight/po/9.0/po'
    assert_equal 200, last_response.status
    assert_equal '{"weight":9.0}', last_response.body
  end

  def test_weight_g_to_kg_32
    get '/weight/g/49.0/kg'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.049}', last_response.body
  end

  def test_weight_oz_to_kg_33
    get '/weight/oz/11.0/kg'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.31184}', last_response.body
  end

  def test_weight_oz_to_g_34
    get '/weight/oz/4.0/g'
    assert_equal 200, last_response.status
    assert_equal '{"weight":113.39797}', last_response.body
  end

  def test_weight_kg_to_kg_35
    get '/weight/kg/82.0/kg'
    assert_equal 200, last_response.status
    assert_equal '{"weight":82.0}', last_response.body
  end

  def test_weight_po_to_ton_36
    get '/weight/po/56.0/ton'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.0254}', last_response.body
  end

  def test_weight_oz_to_oz_37
    get '/weight/oz/73.0/oz'
    assert_equal 200, last_response.status
    assert_equal '{"weight":73.0}', last_response.body
  end

  def test_weight_oz_to_kg_38
    get '/weight/oz/23.0/kg'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.65204}', last_response.body
  end

  def test_weight_oz_to_ton_39
    get '/weight/oz/78.0/ton'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.00221}', last_response.body
  end

  def test_weight_g_to_po_40
    get '/weight/g/35.0/po'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.07716}', last_response.body
  end

  def test_weight_kg_to_g_41
    get '/weight/kg/3.0/g'
    assert_equal 200, last_response.status
    assert_equal '{"weight":3000.0}', last_response.body
  end

  def test_weight_oz_to_po_42
    get '/weight/oz/15.0/po'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.93749}', last_response.body
  end

  def test_weight_ton_to_po_43
    get '/weight/ton/70.0/po'
    assert_equal 200, last_response.status
    assert_equal '{"weight":154322.0}', last_response.body
  end

  def test_weight_g_to_g_44
    get '/weight/g/9.0/g'
    assert_equal 200, last_response.status
    assert_equal '{"weight":9.0}', last_response.body
  end

  def test_weight_oz_to_po_45
    get '/weight/oz/31.0/po'
    assert_equal 200, last_response.status
    assert_equal '{"weight":1.93748}', last_response.body
  end

  def test_weight_ton_to_po_46
    get '/weight/ton/63.0/po'
    assert_equal 200, last_response.status
    assert_equal '{"weight":138889.8}', last_response.body
  end

  def test_weight_po_to_po_47
    get '/weight/po/58.0/po'
    assert_equal 200, last_response.status
    assert_equal '{"weight":58.0}', last_response.body
  end

  def test_weight_po_to_po_48
    get '/weight/po/83.0/po'
    assert_equal 200, last_response.status
    assert_equal '{"weight":83.0}', last_response.body
  end

  def test_weight_kg_to_g_49
    get '/weight/kg/34.0/g'
    assert_equal 200, last_response.status
    assert_equal '{"weight":34000.0}', last_response.body
  end

  def test_weight_ton_to_po_50
    get '/weight/ton/97.0/po'
    assert_equal 200, last_response.status
    assert_equal '{"weight":213846.2}', last_response.body
  end

  def test_weight_ton_to_oz_51
    get '/weight/ton/68.0/oz'
    assert_equal 200, last_response.status
    assert_equal '{"weight":2398632.0}', last_response.body
  end

  def test_weight_kg_to_ton_52
    get '/weight/kg/17.0/ton'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.017}', last_response.body
  end

  def test_weight_oz_to_po_53
    get '/weight/oz/2.0/po'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.125}', last_response.body
  end

  def test_weight_po_to_g_54
    get '/weight/po/11.0/g'
    assert_equal 200, last_response.status
    assert_equal '{"weight":4989.56727}', last_response.body
  end

  def test_weight_po_to_ton_55
    get '/weight/po/40.0/ton'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.01814}', last_response.body
  end

  def test_weight_oz_to_po_56
    get '/weight/oz/33.0/po'
    assert_equal 200, last_response.status
    assert_equal '{"weight":2.06248}', last_response.body
  end

  def test_weight_kg_to_kg_57
    get '/weight/kg/73.0/kg'
    assert_equal 200, last_response.status
    assert_equal '{"weight":73.0}', last_response.body
  end

  def test_weight_ton_to_kg_58
    get '/weight/ton/60.0/kg'
    assert_equal 200, last_response.status
    assert_equal '{"weight":60000.0}', last_response.body
  end

  def test_weight_oz_to_ton_59
    get '/weight/oz/31.0/ton'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.00088}', last_response.body
  end

  def test_weight_kg_to_kg_60
    get '/weight/kg/19.0/kg'
    assert_equal 200, last_response.status
    assert_equal '{"weight":19.0}', last_response.body
  end

  def test_weight_kg_to_oz_61
    get '/weight/kg/52.0/oz'
    assert_equal 200, last_response.status
    assert_equal '{"weight":1834.248}', last_response.body
  end

  def test_weight_g_to_g_62
    get '/weight/g/84.0/g'
    assert_equal 200, last_response.status
    assert_equal '{"weight":84.0}', last_response.body
  end

  def test_weight_ton_to_kg_63
    get '/weight/ton/57.0/kg'
    assert_equal 200, last_response.status
    assert_equal '{"weight":57000.0}', last_response.body
  end

  def test_weight_ton_to_g_64
    get '/weight/ton/10.0/g'
    assert_equal 200, last_response.status
    assert_equal '{"weight":10000000.0}', last_response.body
  end

  def test_weight_po_to_oz_65
    get '/weight/po/2.0/oz'
    assert_equal 200, last_response.status
    assert_equal '{"weight":32.00036}', last_response.body
  end

  def test_weight_ton_to_kg_66
    get '/weight/ton/21.0/kg'
    assert_equal 200, last_response.status
    assert_equal '{"weight":21000.0}', last_response.body
  end

  def test_weight_ton_to_g_67
    get '/weight/ton/67.0/g'
    assert_equal 200, last_response.status
    assert_equal '{"weight":67000000.0}', last_response.body
  end

  def test_weight_g_to_g_68
    get '/weight/g/98.0/g'
    assert_equal 200, last_response.status
    assert_equal '{"weight":98.0}', last_response.body
  end

  def test_weight_g_to_po_69
    get '/weight/g/76.0/po'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.16755}', last_response.body
  end

  def test_weight_po_to_kg_70
    get '/weight/po/80.0/kg'
    assert_equal 200, last_response.status
    assert_equal '{"weight":36.28776}', last_response.body
  end

  def test_weight_ton_to_oz_71
    get '/weight/ton/31.0/oz'
    assert_equal 200, last_response.status
    assert_equal '{"weight":1093494.0}', last_response.body
  end

  def test_weight_po_to_ton_72
    get '/weight/po/85.0/ton'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.03856}', last_response.body
  end

  def test_weight_ton_to_kg_73
    get '/weight/ton/92.0/kg'
    assert_equal 200, last_response.status
    assert_equal '{"weight":92000.0}', last_response.body
  end

  def test_weight_po_to_ton_74
    get '/weight/po/67.0/ton'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.03039}', last_response.body
  end

  def test_weight_oz_to_ton_75
    get '/weight/oz/3.0/ton'
    assert_equal 200, last_response.status
    assert_equal '{"weight":9.0e-05}', last_response.body
  end

  def test_weight_oz_to_kg_76
    get '/weight/oz/42.0/kg'
    assert_equal 200, last_response.status
    assert_equal '{"weight":1.19068}', last_response.body
  end

  def test_weight_g_to_kg_77
    get '/weight/g/90.0/kg'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.09}', last_response.body
  end

  def test_weight_kg_to_oz_78
    get '/weight/kg/51.0/oz'
    assert_equal 200, last_response.status
    assert_equal '{"weight":1798.974}', last_response.body
  end

  def test_weight_g_to_g_79
    get '/weight/g/59.0/g'
    assert_equal 200, last_response.status
    assert_equal '{"weight":59.0}', last_response.body
  end

  def test_weight_po_to_kg_80
    get '/weight/po/7.0/kg'
    assert_equal 200, last_response.status
    assert_equal '{"weight":3.17518}', last_response.body
  end

  def test_weight_g_to_g_81
    get '/weight/g/49.0/g'
    assert_equal 200, last_response.status
    assert_equal '{"weight":49.0}', last_response.body
  end

  def test_weight_po_to_oz_82
    get '/weight/po/92.0/oz'
    assert_equal 200, last_response.status
    assert_equal '{"weight":1472.01669}', last_response.body
  end

  def test_weight_ton_to_kg_83
    get '/weight/ton/24.0/kg'
    assert_equal 200, last_response.status
    assert_equal '{"weight":24000.0}', last_response.body
  end

  def test_weight_po_to_oz_84
    get '/weight/po/19.0/oz'
    assert_equal 200, last_response.status
    assert_equal '{"weight":304.00345}', last_response.body
  end

  def test_weight_kg_to_oz_85
    get '/weight/kg/39.0/oz'
    assert_equal 200, last_response.status
    assert_equal '{"weight":1375.686}', last_response.body
  end

  def test_weight_g_to_po_86
    get '/weight/g/35.0/po'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.07716}', last_response.body
  end

  def test_weight_kg_to_ton_87
    get '/weight/kg/55.0/ton'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.055}', last_response.body
  end

  def test_weight_oz_to_po_88
    get '/weight/oz/50.0/po'
    assert_equal 200, last_response.status
    assert_equal '{"weight":3.12496}', last_response.body
  end

  def test_weight_po_to_g_89
    get '/weight/po/17.0/g'
    assert_equal 200, last_response.status
    assert_equal '{"weight":7711.14941}', last_response.body
  end

  def test_weight_ton_to_oz_90
    get '/weight/ton/92.0/oz'
    assert_equal 200, last_response.status
    assert_equal '{"weight":3245208.0}', last_response.body
  end

  def test_weight_kg_to_kg_91
    get '/weight/kg/74.0/kg'
    assert_equal 200, last_response.status
    assert_equal '{"weight":74.0}', last_response.body
  end

  def test_weight_po_to_g_92
    get '/weight/po/13.0/g'
    assert_equal 200, last_response.status
    assert_equal '{"weight":5896.76132}', last_response.body
  end

  def test_weight_ton_to_po_93
    get '/weight/ton/18.0/po'
    assert_equal 200, last_response.status
    assert_equal '{"weight":39682.8}', last_response.body
  end

  def test_weight_ton_to_g_94
    get '/weight/ton/2.0/g'
    assert_equal 200, last_response.status
    assert_equal '{"weight":2000000.0}', last_response.body
  end

  def test_weight_po_to_ton_95
    get '/weight/po/49.0/ton'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.02223}', last_response.body
  end

  def test_weight_oz_to_oz_96
    get '/weight/oz/79.0/oz'
    assert_equal 200, last_response.status
    assert_equal '{"weight":79.0}', last_response.body
  end

  def test_weight_ton_to_ton_97
    get '/weight/ton/82.0/ton'
    assert_equal 200, last_response.status
    assert_equal '{"weight":82.0}', last_response.body
  end

  def test_weight_po_to_kg_98
    get '/weight/po/30.0/kg'
    assert_equal 200, last_response.status
    assert_equal '{"weight":13.60791}', last_response.body
  end

  def test_weight_kg_to_ton_99
    get '/weight/kg/62.0/ton'
    assert_equal 200, last_response.status
    assert_equal '{"weight":0.062}', last_response.body
  end

  def test_weight_po_to_kg_100
    get '/weight/po/59.0/kg'
    assert_equal 200, last_response.status
    assert_equal '{"weight":26.76222}', last_response.body
  end
end
