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

  def test_velocity_kh_to_knot_0
    get '/velocity/kh/51.0/knot'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":27.54}', last_response.body
  end

  def test_velocity_kh_to_knot_1
    get '/velocity/kh/59.0/knot'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":31.86}', last_response.body
  end

  def test_velocity_kh_to_mph_2
    get '/velocity/kh/74.0/mph'
    assert_equal 200, last_response.status
  end

  def test_velocity_mph_to_kh_3
    get '/velocity/mph/14.0/kh'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":22.53}', last_response.body
  end

  def test_velocity_ms_to_mph_4
    get '/velocity/ms/81.0/mph'
    assert_equal 200, last_response.status
  end

  def test_velocity_ms_to_mph_5
    get '/velocity/ms/9.0/mph'
    assert_equal 200, last_response.status
  end

  def test_velocity_mph_to_mph_6
    get '/velocity/mph/90.0/mph'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":90.0}', last_response.body
  end

  def test_velocity_kh_to_mph_7
    get '/velocity/kh/68.0/mph'
    assert_equal 200, last_response.status
  end

  def test_velocity_knot_to_ms_8
    get '/velocity/knot/12.0/ms'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":6.17}', last_response.body
  end

  def test_velocity_kh_to_knot_9
    get '/velocity/kh/11.0/knot'
    assert_equal 200, last_response.status
  end

  def test_velocity_ms_to_kh_10
    get '/velocity/ms/73.0/kh'
    assert_equal 200, last_response.status
  end

  def test_velocity_kh_to_ms_11
    get '/velocity/kh/98.0/ms'
    assert_equal 200, last_response.status
  end

  def test_velocity_knot_to_ms_12
    get '/velocity/knot/29.0/ms'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":14.92}', last_response.body
  end

  def test_velocity_knot_to_knot_13
    get '/velocity/knot/27.0/knot'
    assert_equal 200, last_response.status
  end

  def test_velocity_kh_to_mph_14
    get '/velocity/kh/32.0/mph'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":19.88}', last_response.body
  end

  def test_velocity_mph_to_mph_15
    get '/velocity/mph/85.0/mph'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":85.0}', last_response.body
  end

  def test_velocity_mph_to_kh_16
    get '/velocity/mph/81.0/kh'
    assert_equal 200, last_response.status
  end

  def test_velocity_mph_to_knot_17
    get '/velocity/mph/16.0/knot'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":13.9}', last_response.body
  end

  def test_velocity_mph_to_ms_18
    get '/velocity/mph/80.0/ms'
    assert_equal 200, last_response.status
  end

  def test_velocity_mph_to_kh_19
    get '/velocity/mph/43.0/kh'
    assert_equal 200, last_response.status
  end

  def test_velocity_mph_to_ms_20
    get '/velocity/mph/43.0/ms'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":19.22}', last_response.body
  end

  def test_velocity_ms_to_knot_21
    get '/velocity/ms/38.0/knot'
    assert_equal 200, last_response.status
  end

  def test_velocity_knot_to_ms_22
    get '/velocity/knot/66.0/ms'
    assert_equal 200, last_response.status
  end

  def test_velocity_kh_to_kh_23
    get '/velocity/kh/54.0/kh'
    assert_equal 200, last_response.status
  end

  def test_velocity_kh_to_mph_24
    get '/velocity/kh/32.0/mph'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":19.88}', last_response.body
  end

  def test_velocity_mph_to_knot_25
    get '/velocity/mph/31.0/knot'
    assert_equal 200, last_response.status
  end

  def test_velocity_knot_to_mph_26
    get '/velocity/knot/65.0/mph'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":74.8}', last_response.body
  end

  def test_velocity_knot_to_knot_27
    get '/velocity/knot/49.0/knot'
    assert_equal 200, last_response.status
  end

  def test_velocity_mph_to_ms_28
    get '/velocity/mph/92.0/ms'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":41.13}', last_response.body
  end

  def test_velocity_knot_to_kh_29
    get '/velocity/knot/71.0/kh'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":131.49}', last_response.body
  end

  def test_velocity_ms_to_mph_30
    get '/velocity/ms/20.0/mph'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":44.74}', last_response.body
  end

  def test_velocity_kh_to_kh_31
    get '/velocity/kh/40.0/kh'
    assert_equal 200, last_response.status
  end

  def test_velocity_knot_to_mph_32
    get '/velocity/knot/86.0/mph'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":98.97}', last_response.body
  end

  def test_velocity_knot_to_knot_33
    get '/velocity/knot/77.0/knot'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":77.0}', last_response.body
  end

  def test_velocity_mph_to_kh_34
    get '/velocity/mph/49.0/kh'
    assert_equal 200, last_response.status
  end

  def test_velocity_knot_to_ms_35
    get '/velocity/knot/80.0/ms'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":41.16}', last_response.body
  end

  def test_velocity_ms_to_kh_36
    get '/velocity/ms/4.0/kh'
    assert_equal 200, last_response.status
  end

  def test_velocity_knot_to_ms_37
    get '/velocity/knot/82.0/ms'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":42.18}', last_response.body
  end

  def test_velocity_knot_to_mph_38
    get '/velocity/knot/56.0/mph'
    assert_equal 200, last_response.status
  end

  def test_velocity_kh_to_ms_39
    get '/velocity/kh/66.0/ms'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":18.33}', last_response.body
  end

  def test_velocity_ms_to_ms_40
    get '/velocity/ms/23.0/ms'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":23.0}', last_response.body
  end

  def test_velocity_ms_to_knot_41
    get '/velocity/ms/78.0/knot'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":151.62}', last_response.body
  end

  def test_velocity_kh_to_knot_42
    get '/velocity/kh/35.0/knot'
    assert_equal 200, last_response.status
  end

  def test_velocity_knot_to_kh_43
    get '/velocity/knot/91.0/kh'
    assert_equal 200, last_response.status
  end

  def test_velocity_kh_to_kh_44
    get '/velocity/kh/24.0/kh'
    assert_equal 200, last_response.status
  end

  def test_velocity_ms_to_knot_45
    get '/velocity/ms/1.0/knot'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":1.94}', last_response.body
  end

  def test_velocity_knot_to_mph_46
    get '/velocity/knot/70.0/mph'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":80.55}', last_response.body
  end

  def test_velocity_kh_to_knot_47
    get '/velocity/kh/10.0/knot'
    assert_equal 200, last_response.status
  end

  def test_velocity_kh_to_knot_48
    get '/velocity/kh/38.0/knot'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":20.52}', last_response.body
  end

  def test_velocity_knot_to_mph_49
    get '/velocity/knot/83.0/mph'
    assert_equal 200, last_response.status
  end

  def test_velocity_kh_to_kh_50
    get '/velocity/kh/58.0/kh'
    assert_equal 200, last_response.status
  end

  def test_velocity_knot_to_knot_51
    get '/velocity/knot/3.0/knot'
    assert_equal 200, last_response.status
  end

  def test_velocity_knot_to_knot_52
    get '/velocity/knot/95.0/knot'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":95.0}', last_response.body
  end

  def test_velocity_kh_to_kh_53
    get '/velocity/kh/48.0/kh'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":48.0}', last_response.body
  end

  def test_velocity_ms_to_mph_54
    get '/velocity/ms/27.0/mph'
    assert_equal 200, last_response.status
  end

  def test_velocity_ms_to_kh_55
    get '/velocity/ms/85.0/kh'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":306.0}', last_response.body
  end

  def test_velocity_ms_to_knot_56
    get '/velocity/ms/2.0/knot'
    assert_equal 200, last_response.status
  end

  def test_velocity_kh_to_mph_57
    get '/velocity/kh/11.0/mph'
    assert_equal 200, last_response.status
  end

  def test_velocity_kh_to_ms_58
    get '/velocity/kh/13.0/ms'
    assert_equal 200, last_response.status
  end

  def test_velocity_mph_to_mph_59
    get '/velocity/mph/53.0/mph'
    assert_equal 200, last_response.status
  end

  def test_velocity_ms_to_mph_60
    get '/velocity/ms/47.0/mph'
    assert_equal 200, last_response.status
  end

  def test_velocity_ms_to_ms_61
    get '/velocity/ms/73.0/ms'
    assert_equal 200, last_response.status
  end

  def test_velocity_kh_to_mph_62
    get '/velocity/kh/60.0/mph'
    assert_equal 200, last_response.status
  end

  def test_velocity_ms_to_knot_63
    get '/velocity/ms/34.0/knot'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":66.09}', last_response.body
  end

  def test_velocity_knot_to_knot_64
    get '/velocity/knot/66.0/knot'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":66.0}', last_response.body
  end

  def test_velocity_ms_to_ms_65
    get '/velocity/ms/70.0/ms'
    assert_equal 200, last_response.status
  end

  def test_velocity_knot_to_kh_66
    get '/velocity/knot/53.0/kh'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":98.16}', last_response.body
  end

  def test_velocity_mph_to_mph_67
    get '/velocity/mph/63.0/mph'
    assert_equal 200, last_response.status
  end

  def test_velocity_ms_to_kh_68
    get '/velocity/ms/20.0/kh'
    assert_equal 200, last_response.status
  end

  def test_velocity_kh_to_mph_69
    get '/velocity/kh/57.0/mph'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":35.42}', last_response.body
  end

  def test_velocity_mph_to_ms_70
    get '/velocity/mph/63.0/ms'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":28.16}', last_response.body
  end

  def test_velocity_knot_to_kh_71
    get '/velocity/knot/26.0/kh'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":48.15}', last_response.body
  end

  def test_velocity_ms_to_kh_72
    get '/velocity/ms/75.0/kh'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":270.0}', last_response.body
  end

  def test_velocity_mph_to_kh_73
    get '/velocity/mph/93.0/kh'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":149.67}', last_response.body
  end

  def test_velocity_mph_to_kh_74
    get '/velocity/mph/67.0/kh'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":107.83}', last_response.body
  end

  def test_velocity_knot_to_kh_75
    get '/velocity/knot/98.0/kh'
    assert_equal 200, last_response.status
  end

  def test_velocity_kh_to_kh_76
    get '/velocity/kh/45.0/kh'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":45.0}', last_response.body
  end

  def test_velocity_kh_to_knot_77
    get '/velocity/kh/25.0/knot'
    assert_equal 200, last_response.status
  end

  def test_velocity_kh_to_knot_78
    get '/velocity/kh/80.0/knot'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":43.2}', last_response.body
  end

  def test_velocity_mph_to_mph_79
    get '/velocity/mph/31.0/mph'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":31.0}', last_response.body
  end

  def test_velocity_knot_to_kh_80
    get '/velocity/knot/85.0/kh'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":157.42}', last_response.body
  end

  def test_velocity_mph_to_ms_81
    get '/velocity/mph/62.0/ms'
    assert_equal 200, last_response.status
  end

  def test_velocity_kh_to_kh_82
    get '/velocity/kh/58.0/kh'
    assert_equal 200, last_response.status
  end

  def test_velocity_knot_to_kh_83
    get '/velocity/knot/67.0/kh'
    assert_equal 200, last_response.status
  end

  def test_velocity_knot_to_mph_84
    get '/velocity/knot/18.0/mph'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":20.71}', last_response.body
  end

  def test_velocity_mph_to_ms_85
    get '/velocity/mph/98.0/ms'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":43.81}', last_response.body
  end

  def test_velocity_kh_to_kh_86
    get '/velocity/kh/90.0/kh'
    assert_equal 200, last_response.status
  end

  def test_velocity_mph_to_knot_87
    get '/velocity/mph/88.0/knot'
    assert_equal 200, last_response.status
  end

  def test_velocity_mph_to_ms_88
    get '/velocity/mph/16.0/ms'
    assert_equal 200, last_response.status
  end

  def test_velocity_mph_to_kh_89
    get '/velocity/mph/41.0/kh'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":65.98}', last_response.body
  end

  def test_velocity_knot_to_ms_90
    get '/velocity/knot/7.0/ms'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":3.6}', last_response.body
  end

  def test_velocity_kh_to_kh_91
    get '/velocity/kh/49.0/kh'
    assert_equal 200, last_response.status
  end

  def test_velocity_kh_to_knot_92
    get '/velocity/kh/92.0/knot'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":49.68}', last_response.body
  end

  def test_velocity_mph_to_knot_93
    get '/velocity/mph/24.0/knot'
    assert_equal 200, last_response.status
  end

  def test_velocity_knot_to_knot_94
    get '/velocity/knot/72.0/knot'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":72.0}', last_response.body
  end

  def test_velocity_ms_to_ms_95
    get '/velocity/ms/39.0/ms'
    assert_equal 200, last_response.status
  end

  def test_velocity_kh_to_mph_96
    get '/velocity/kh/25.0/mph'
    assert_equal 200, last_response.status
  end

  def test_velocity_ms_to_knot_97
    get '/velocity/ms/55.0/knot'
    assert_equal 200, last_response.status
  end

  def test_velocity_mph_to_mph_98
    get '/velocity/mph/93.0/mph'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":93.0}', last_response.body
  end

  def test_velocity_kh_to_mph_99
    get '/velocity/kh/17.0/mph'
    assert_equal 200, last_response.status
  end

  def test_velocity_kh_to_ms_100
    get '/velocity/kh/87.0/ms'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":24.17}', last_response.body
  end

  def test_velocity_ms_to_mph_101
    get '/velocity/ms/29.0/mph'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":64.87}', last_response.body
  end

  def test_velocity_kh_to_kh_102
    get '/velocity/kh/32.0/kh'
    assert_equal 200, last_response.status
  end

  def test_velocity_mph_to_mph_103
    get '/velocity/mph/1.0/mph'
    assert_equal 200, last_response.status
  end

  def test_velocity_mph_to_kh_104
    get '/velocity/mph/2.0/kh'
    assert_equal 200, last_response.status
  end

  def test_velocity_kh_to_mph_105
    get '/velocity/kh/83.0/mph'
    assert_equal 200, last_response.status
  end

  def test_velocity_knot_to_kh_106
    get '/velocity/knot/6.0/kh'
    assert_equal 200, last_response.status
  end

  def test_velocity_mph_to_mph_107
    get '/velocity/mph/94.0/mph'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":94.0}', last_response.body
  end

  def test_velocity_mph_to_kh_108
    get '/velocity/mph/82.0/kh'
    assert_equal 200, last_response.status
  end

  def test_velocity_mph_to_kh_109
    get '/velocity/mph/74.0/kh'
    assert_equal 200, last_response.status
  end

  def test_velocity_knot_to_kh_110
    get '/velocity/knot/8.0/kh'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":14.82}', last_response.body
  end

  def test_velocity_mph_to_mph_111
    get '/velocity/mph/64.0/mph'
    assert_equal 200, last_response.status
  end

  def test_velocity_knot_to_ms_112
    get '/velocity/knot/94.0/ms'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":48.36}', last_response.body
  end

  def test_velocity_mph_to_mph_113
    get '/velocity/mph/56.0/mph'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":56.0}', last_response.body
  end

  def test_velocity_knot_to_mph_114
    get '/velocity/knot/60.0/mph'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":69.05}', last_response.body
  end

  def test_velocity_mph_to_mph_115
    get '/velocity/mph/38.0/mph'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":38.0}', last_response.body
  end

  def test_velocity_mph_to_kh_116
    get '/velocity/mph/22.0/kh'
    assert_equal 200, last_response.status
  end

  def test_velocity_mph_to_kh_117
    get '/velocity/mph/72.0/kh'
    assert_equal 200, last_response.status
  end

  def test_velocity_knot_to_ms_118
    get '/velocity/knot/1.0/ms'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":0.51}', last_response.body
  end

  def test_velocity_ms_to_mph_119
    get '/velocity/ms/95.0/mph'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":212.51}', last_response.body
  end

  def test_velocity_ms_to_ms_120
    get '/velocity/ms/77.0/ms'
    assert_equal 200, last_response.status
  end

  def test_velocity_kh_to_kh_121
    get '/velocity/kh/75.0/kh'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":75.0}', last_response.body
  end

  def test_velocity_mph_to_mph_122
    get '/velocity/mph/43.0/mph'
    assert_equal 200, last_response.status
  end

  def test_velocity_knot_to_kh_123
    get '/velocity/knot/46.0/kh'
    assert_equal 200, last_response.status
  end

  def test_velocity_kh_to_knot_124
    get '/velocity/kh/34.0/knot'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":18.36}', last_response.body
  end

  def test_velocity_kh_to_mph_125
    get '/velocity/kh/99.0/mph'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":61.52}', last_response.body
  end

  def test_velocity_kh_to_knot_126
    get '/velocity/kh/76.0/knot'
    assert_equal 200, last_response.status
  end

  def test_velocity_mph_to_knot_127
    get '/velocity/mph/43.0/knot'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":37.37}', last_response.body
  end

  def test_velocity_knot_to_ms_128
    get '/velocity/knot/78.0/ms'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":40.13}', last_response.body
  end

  def test_velocity_kh_to_knot_129
    get '/velocity/kh/39.0/knot'
    assert_equal 200, last_response.status
  end

  def test_velocity_ms_to_knot_130
    get '/velocity/ms/82.0/knot'
    assert_equal 200, last_response.status
  end

  def test_velocity_ms_to_mph_131
    get '/velocity/ms/19.0/mph'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":42.5}', last_response.body
  end

  def test_velocity_kh_to_mph_132
    get '/velocity/kh/97.0/mph'
    assert_equal 200, last_response.status
  end

  def test_velocity_ms_to_mph_133
    get '/velocity/ms/23.0/mph'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":51.45}', last_response.body
  end

  def test_velocity_kh_to_ms_134
    get '/velocity/kh/49.0/ms'
    assert_equal 200, last_response.status
  end

  def test_velocity_mph_to_ms_135
    get '/velocity/mph/19.0/ms'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":8.49}', last_response.body
  end

  def test_velocity_mph_to_knot_136
    get '/velocity/mph/35.0/knot'
    assert_equal 200, last_response.status
  end

  def test_velocity_kh_to_knot_137
    get '/velocity/kh/28.0/knot'
    assert_equal 200, last_response.status
  end

  def test_velocity_mph_to_mph_138
    get '/velocity/mph/45.0/mph'
    assert_equal 200, last_response.status
  end

  def test_velocity_ms_to_ms_139
    get '/velocity/ms/59.0/ms'
    assert_equal 200, last_response.status
  end

  def test_velocity_mph_to_ms_140
    get '/velocity/mph/58.0/ms'
    assert_equal 200, last_response.status
  end

  def test_velocity_knot_to_kh_141
    get '/velocity/knot/26.0/kh'
    assert_equal 200, last_response.status
  end

  def test_velocity_mph_to_kh_142
    get '/velocity/mph/51.0/kh'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":82.08}', last_response.body
  end

  def test_velocity_mph_to_ms_143
    get '/velocity/mph/40.0/ms'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":17.88}', last_response.body
  end

  def test_velocity_kh_to_mph_144
    get '/velocity/kh/69.0/mph'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":42.87}', last_response.body
  end

  def test_velocity_knot_to_kh_145
    get '/velocity/knot/74.0/kh'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":137.05}', last_response.body
  end

  def test_velocity_kh_to_ms_146
    get '/velocity/kh/90.0/ms'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":25.0}', last_response.body
  end

  def test_velocity_ms_to_ms_147
    get '/velocity/ms/34.0/ms'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":34.0}', last_response.body
  end

  def test_velocity_ms_to_knot_148
    get '/velocity/ms/15.0/knot'
    assert_equal 200, last_response.status
  end

  def test_velocity_ms_to_mph_149
    get '/velocity/ms/2.0/mph'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":4.47}', last_response.body
  end

  def test_velocity_knot_to_knot_150
    get '/velocity/knot/4.0/knot'
    assert_equal 200, last_response.status
  end
end
