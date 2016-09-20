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

  def test_velocity_knot_to_mph_0
    get '/velocity/knot/51.0/mph'
    assert_equal 200, last_response.status
  end

  def test_velocity_kh_to_mph_1
    get '/velocity/kh/33.0/mph'
    assert_equal 200, last_response.status
  end

  def test_velocity_kh_to_mph_2
    get '/velocity/kh/42.0/mph'
    assert_equal 200, last_response.status
  end

  def test_velocity_ms_to_kh_3
    get '/velocity/ms/81.0/kh'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":291.6}', last_response.body
  end

  def test_velocity_mph_to_mph_4
    get '/velocity/mph/22.0/mph'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":22.0}', last_response.body
  end

  def test_velocity_fts_to_kh_5
    get '/velocity/fts/66.0/kh'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":72.42}', last_response.body
  end

  def test_velocity_fts_to_knot_6
    get '/velocity/fts/21.0/knot'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":12.44}', last_response.body
  end

  def test_velocity_knot_to_kh_7
    get '/velocity/knot/64.0/kh'
    assert_equal 200, last_response.status
  end

  def test_velocity_kh_to_kh_8
    get '/velocity/kh/49.0/kh'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":49.0}', last_response.body
  end

  def test_velocity_mph_to_fts_9
    get '/velocity/mph/17.0/fts'
    assert_equal 200, last_response.status
  end

  def test_velocity_knot_to_fts_10
    get '/velocity/knot/29.0/fts'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":48.95}', last_response.body
  end

  def test_velocity_knot_to_kh_11
    get '/velocity/knot/27.0/kh'
    assert_equal 200, last_response.status
  end

  def test_velocity_mph_to_ms_12
    get '/velocity/mph/32.0/ms'
    assert_equal 200, last_response.status
  end

  def test_velocity_kh_to_ms_13
    get '/velocity/kh/14.0/ms'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":3.89}', last_response.body
  end

  def test_velocity_mph_to_ms_14
    get '/velocity/mph/19.0/ms'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":8.49}', last_response.body
  end

  def test_velocity_kh_to_knot_15
    get '/velocity/kh/8.0/knot'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":4.32}', last_response.body
  end

  def test_velocity_knot_to_ms_16
    get '/velocity/knot/9.0/ms'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":4.63}', last_response.body
  end

  def test_velocity_fts_to_mph_17
    get '/velocity/fts/38.0/mph'
    assert_equal 200, last_response.status
  end

  def test_velocity_kh_to_knot_18
    get '/velocity/kh/56.0/knot'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":30.24}', last_response.body
  end

  def test_velocity_kh_to_ms_19
    get '/velocity/kh/32.0/ms'
    assert_equal 200, last_response.status
  end

  def test_velocity_knot_to_kh_20
    get '/velocity/knot/30.0/kh'
    assert_equal 200, last_response.status
  end

  def test_velocity_mph_to_mph_21
    get '/velocity/mph/65.0/mph'
    assert_equal 200, last_response.status
  end

  def test_velocity_knot_to_fts_22
    get '/velocity/knot/39.0/fts'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":65.82}', last_response.body
  end

  def test_velocity_mph_to_mph_23
    get '/velocity/mph/56.0/mph'
    assert_equal 200, last_response.status
  end

  def test_velocity_fts_to_kh_24
    get '/velocity/fts/15.0/kh'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":16.46}', last_response.body
  end

  def test_velocity_mph_to_ms_25
    get '/velocity/mph/84.0/ms'
    assert_equal 200, last_response.status
  end

  def test_velocity_kh_to_knot_26
    get '/velocity/kh/33.0/knot'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":17.82}', last_response.body
  end

  def test_velocity_knot_to_ms_27
    get '/velocity/knot/46.0/ms'
    assert_equal 200, last_response.status
  end

  def test_velocity_kh_to_ms_28
    get '/velocity/kh/14.0/ms'
    assert_equal 200, last_response.status
  end

  def test_velocity_fts_to_fts_29
    get '/velocity/fts/80.0/fts'
    assert_equal 200, last_response.status
  end

  def test_velocity_ms_to_ms_30
    get '/velocity/ms/82.0/ms'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":82.0}', last_response.body
  end

  def test_velocity_knot_to_mph_31
    get '/velocity/knot/56.0/mph'
    assert_equal 200, last_response.status
  end

  def test_velocity_fts_to_fts_32
    get '/velocity/fts/12.0/fts'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":12.0}', last_response.body
  end

  def test_velocity_fts_to_mph_33
    get '/velocity/fts/78.0/mph'
    assert_equal 200, last_response.status
  end

  def test_velocity_knot_to_knot_34
    get '/velocity/knot/33.0/knot'
    assert_equal 200, last_response.status
  end

  def test_velocity_ms_to_kh_35
    get '/velocity/ms/71.0/kh'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":255.6}', last_response.body
  end

  def test_velocity_fts_to_knot_36
    get '/velocity/fts/15.0/knot'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":8.89}', last_response.body
  end

  def test_velocity_knot_to_kh_37
    get '/velocity/knot/10.0/kh'
    assert_equal 200, last_response.status
  end

  def test_velocity_kh_to_fts_38
    get '/velocity/kh/38.0/fts'
    assert_equal 200, last_response.status
  end

  def test_velocity_mph_to_knot_39
    get '/velocity/mph/63.0/knot'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":54.75}', last_response.body
  end

  def test_velocity_knot_to_knot_40
    get '/velocity/knot/29.0/knot'
    assert_equal 200, last_response.status
  end

  def test_velocity_knot_to_mph_41
    get '/velocity/knot/95.0/mph'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":109.32}', last_response.body
  end

  def test_velocity_mph_to_knot_42
    get '/velocity/mph/97.0/knot'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":84.29}', last_response.body
  end

  def test_velocity_fts_to_kh_43
    get '/velocity/fts/18.0/kh'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":19.75}', last_response.body
  end

  def test_velocity_fts_to_knot_44
    get '/velocity/fts/2.0/knot'
    assert_equal 200, last_response.status
  end

  def test_velocity_knot_to_kh_45
    get '/velocity/knot/93.0/kh'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":172.24}', last_response.body
  end

  def test_velocity_mph_to_kh_46
    get '/velocity/mph/53.0/kh'
    assert_equal 200, last_response.status
  end

  def test_velocity_knot_to_kh_47
    get '/velocity/knot/100.0/kh'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":185.2}', last_response.body
  end

  def test_velocity_knot_to_fts_48
    get '/velocity/knot/96.0/fts'
    assert_equal 200, last_response.status
  end

  def test_velocity_mph_to_ms_49
    get '/velocity/mph/31.0/ms'
    assert_equal 200, last_response.status
  end

  def test_velocity_mph_to_knot_50
    get '/velocity/mph/100.0/knot'
    assert_equal 200, last_response.status
  end

  def test_velocity_ms_to_fts_51
    get '/velocity/ms/70.0/fts'
    assert_equal 200, last_response.status
  end

  def test_velocity_ms_to_fts_52
    get '/velocity/ms/53.0/fts'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":173.88}', last_response.body
  end

  def test_velocity_mph_to_ms_53
    get '/velocity/mph/57.0/ms'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":25.48}', last_response.body
  end

  def test_velocity_kh_to_mph_54
    get '/velocity/kh/26.0/mph'
    assert_equal 200, last_response.status
  end

  def test_velocity_mph_to_ms_55
    get '/velocity/mph/44.0/ms'
    assert_equal 200, last_response.status
  end

  def test_velocity_kh_to_mph_56
    get '/velocity/kh/90.0/mph'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":55.92}', last_response.body
  end

  def test_velocity_kh_to_kh_57
    get '/velocity/kh/87.0/kh'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":87.0}', last_response.body
  end

  def test_velocity_knot_to_knot_58
    get '/velocity/knot/25.0/knot'
    assert_equal 200, last_response.status
  end

  def test_velocity_knot_to_ms_59
    get '/velocity/knot/80.0/ms'
    assert_equal 200, last_response.status
  end

  def test_velocity_mph_to_fts_60
    get '/velocity/mph/31.0/fts'
    assert_equal 200, last_response.status
  end

  def test_velocity_mph_to_fts_61
    get '/velocity/mph/83.0/fts'
    assert_equal 200, last_response.status
  end

  def test_velocity_ms_to_knot_62
    get '/velocity/ms/58.0/knot'
    assert_equal 200, last_response.status
  end

  def test_velocity_knot_to_fts_63
    get '/velocity/knot/18.0/fts'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":30.38}', last_response.body
  end

  def test_velocity_mph_to_fts_64
    get '/velocity/mph/98.0/fts'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":143.73}', last_response.body
  end

  def test_velocity_kh_to_ms_65
    get '/velocity/kh/90.0/ms'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":25.0}', last_response.body
  end

  def test_velocity_ms_to_fts_66
    get '/velocity/ms/51.0/fts'
    assert_equal 200, last_response.status
  end

  def test_velocity_kh_to_mph_67
    get '/velocity/kh/41.0/mph'
    assert_equal 200, last_response.status
  end

  def test_velocity_ms_to_fts_68
    get '/velocity/ms/99.0/fts'
    assert_equal 200, last_response.status
  end

  def test_velocity_kh_to_kh_69
    get '/velocity/kh/21.0/kh'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":21.0}', last_response.body
  end

  def test_velocity_knot_to_fts_70
    get '/velocity/knot/93.0/fts'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":156.97}', last_response.body
  end

  def test_velocity_mph_to_ms_71
    get '/velocity/mph/24.0/ms'
    assert_equal 200, last_response.status
  end

  def test_velocity_fts_to_ms_72
    get '/velocity/fts/35.0/ms'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":10.67}', last_response.body
  end

  def test_velocity_kh_to_knot_73
    get '/velocity/kh/35.0/knot'
    assert_equal 200, last_response.status
  end

  def test_velocity_mph_to_mph_74
    get '/velocity/mph/48.0/mph'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":48.0}', last_response.body
  end

  def test_velocity_knot_to_kh_75
    get '/velocity/knot/17.0/kh'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":31.48}', last_response.body
  end

  def test_velocity_fts_to_mph_76
    get '/velocity/fts/34.0/mph'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":23.18}', last_response.body
  end

  def test_velocity_knot_to_kh_77
    get '/velocity/knot/32.0/kh'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":59.26}', last_response.body
  end

  def test_velocity_knot_to_mph_78
    get '/velocity/knot/26.0/mph'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":29.92}', last_response.body
  end

  def test_velocity_kh_to_knot_79
    get '/velocity/kh/57.0/knot'
    assert_equal 200, last_response.status
  end

  def test_velocity_fts_to_fts_80
    get '/velocity/fts/2.0/fts'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":2.0}', last_response.body
  end

  def test_velocity_mph_to_knot_81
    get '/velocity/mph/26.0/knot'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":22.59}', last_response.body
  end

  def test_velocity_ms_to_mph_82
    get '/velocity/ms/62.0/mph'
    assert_equal 200, last_response.status
  end

  def test_velocity_knot_to_ms_83
    get '/velocity/knot/94.0/ms'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":48.36}', last_response.body
  end

  def test_velocity_mph_to_mph_84
    get '/velocity/mph/56.0/mph'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":56.0}', last_response.body
  end

  def test_velocity_knot_to_mph_85
    get '/velocity/knot/60.0/mph'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":69.05}', last_response.body
  end

  def test_velocity_mph_to_ms_86
    get '/velocity/mph/10.0/ms'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":4.47}', last_response.body
  end

  def test_velocity_knot_to_mph_87
    get '/velocity/knot/94.0/mph'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":108.17}', last_response.body
  end

  def test_velocity_kh_to_kh_88
    get '/velocity/kh/18.0/kh'
    assert_equal 200, last_response.status
  end

  def test_velocity_mph_to_ms_89
    get '/velocity/mph/32.0/ms'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":14.31}', last_response.body
  end

  def test_velocity_fts_to_ms_90
    get '/velocity/fts/36.0/ms'
    assert_equal 200, last_response.status
  end

  def test_velocity_kh_to_kh_91
    get '/velocity/kh/75.0/kh'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":75.0}', last_response.body
  end

  def test_velocity_mph_to_kh_92
    get '/velocity/mph/43.0/kh'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":69.2}', last_response.body
  end

  def test_velocity_mph_to_kh_93
    get '/velocity/mph/85.0/kh'
    assert_equal 200, last_response.status
  end

  def test_velocity_knot_to_mph_94
    get '/velocity/knot/76.0/mph'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":87.46}', last_response.body
  end

  def test_velocity_knot_to_knot_95
    get '/velocity/knot/76.0/knot'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":76.0}', last_response.body
  end

  def test_velocity_knot_to_fts_96
    get '/velocity/knot/88.0/fts'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":148.53}', last_response.body
  end

  def test_velocity_knot_to_mph_97
    get '/velocity/knot/39.0/mph'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":44.88}', last_response.body
  end

  def test_velocity_knot_to_ms_98
    get '/velocity/knot/51.0/ms'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":26.24}', last_response.body
  end

  def test_velocity_kh_to_kh_99
    get '/velocity/kh/6.0/kh'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":6.0}', last_response.body
  end

  def test_velocity_mph_to_ms_100
    get '/velocity/mph/23.0/ms'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":10.28}', last_response.body
  end

  def test_velocity_kh_to_kh_101
    get '/velocity/kh/92.0/kh'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":92.0}', last_response.body
  end

  def test_velocity_mph_to_knot_102
    get '/velocity/mph/71.0/knot'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":61.7}', last_response.body
  end

  def test_velocity_mph_to_knot_103
    get '/velocity/mph/0.0/knot'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":0.0}', last_response.body
  end

  def test_velocity_kh_to_fts_104
    get '/velocity/kh/91.0/fts'
    assert_equal 200, last_response.status
  end

  def test_velocity_mph_to_knot_105
    get '/velocity/mph/57.0/knot'
    assert_equal 200, last_response.status
  end

  def test_velocity_fts_to_mph_106
    get '/velocity/fts/96.0/mph'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":65.45}', last_response.body
  end

  def test_velocity_mph_to_knot_107
    get '/velocity/mph/57.0/knot'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":49.53}', last_response.body
  end

  def test_velocity_fts_to_ms_108
    get '/velocity/fts/29.0/ms'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":8.84}', last_response.body
  end

  def test_velocity_fts_to_kh_109
    get '/velocity/fts/72.0/kh'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":79.0}', last_response.body
  end

  def test_velocity_mph_to_kh_110
    get '/velocity/mph/12.0/kh'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":19.31}', last_response.body
  end

  def test_velocity_fts_to_ms_111
    get '/velocity/fts/90.0/ms'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":27.43}', last_response.body
  end

  def test_velocity_fts_to_ms_112
    get '/velocity/fts/68.0/ms'
    assert_equal 200, last_response.status
  end

  def test_velocity_ms_to_knot_113
    get '/velocity/ms/15.0/knot'
    assert_equal 200, last_response.status
  end

  def test_velocity_ms_to_mph_114
    get '/velocity/ms/2.0/mph'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":4.47}', last_response.body
  end

  def test_velocity_knot_to_knot_115
    get '/velocity/knot/4.0/knot'
    assert_equal 200, last_response.status
  end

  def test_velocity_mph_to_kh_116
    get '/velocity/mph/88.0/kh'
    assert_equal 200, last_response.status
  end

  def test_velocity_ms_to_mph_117
    get '/velocity/ms/72.0/mph'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":161.06}', last_response.body
  end

  def test_velocity_fts_to_kh_118
    get '/velocity/fts/82.0/kh'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":89.98}', last_response.body
  end

  def test_velocity_kh_to_ms_119
    get '/velocity/kh/74.0/ms'
    assert_equal 200, last_response.status
  end

  def test_velocity_mph_to_fts_120
    get '/velocity/mph/3.0/fts'
    assert_equal 200, last_response.status
  end

  def test_velocity_knot_to_kh_121
    get '/velocity/knot/12.0/kh'
    assert_equal 200, last_response.status
  end

  def test_velocity_ms_to_fts_122
    get '/velocity/ms/89.0/fts'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":291.99}', last_response.body
  end

  def test_velocity_knot_to_fts_123
    get '/velocity/knot/70.0/fts'
    assert_equal 200, last_response.status
  end

  def test_velocity_ms_to_fts_124
    get '/velocity/ms/30.0/fts'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":98.43}', last_response.body
  end

  def test_velocity_kh_to_ms_125
    get '/velocity/kh/91.0/ms'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":25.28}', last_response.body
  end

  def test_velocity_knot_to_kh_126
    get '/velocity/knot/13.0/kh'
    assert_equal 200, last_response.status
  end

  def test_velocity_ms_to_knot_127
    get '/velocity/ms/16.0/knot'
    assert_equal 200, last_response.status
  end

  def test_velocity_knot_to_mph_128
    get '/velocity/knot/53.0/mph'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":60.99}', last_response.body
  end

  def test_velocity_ms_to_kh_129
    get '/velocity/ms/73.0/kh'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":262.8}', last_response.body
  end

  def test_velocity_fts_to_mph_130
    get '/velocity/fts/86.0/mph'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":58.64}', last_response.body
  end

  def test_velocity_ms_to_fts_131
    get '/velocity/ms/12.0/fts'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":39.37}', last_response.body
  end

  def test_velocity_kh_to_ms_132
    get '/velocity/kh/72.0/ms'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":20.0}', last_response.body
  end

  def test_velocity_kh_to_fts_133
    get '/velocity/kh/75.0/fts'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":68.35}', last_response.body
  end

  def test_velocity_fts_to_mph_134
    get '/velocity/fts/71.0/mph'
    assert_equal 200, last_response.status
  end

  def test_velocity_knot_to_fts_135
    get '/velocity/knot/29.0/fts'
    assert_equal 200, last_response.status
  end

  def test_velocity_ms_to_mph_136
    get '/velocity/ms/14.0/mph'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":31.32}', last_response.body
  end

  def test_velocity_ms_to_fts_137
    get '/velocity/ms/43.0/fts'
    assert_equal 200, last_response.status
  end

  def test_velocity_knot_to_kh_138
    get '/velocity/knot/12.0/kh'
    assert_equal 200, last_response.status
  end

  def test_velocity_knot_to_fts_139
    get '/velocity/knot/33.0/fts'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":55.7}', last_response.body
  end

  def test_velocity_ms_to_mph_140
    get '/velocity/ms/88.0/mph'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":196.85}', last_response.body
  end

  def test_velocity_knot_to_kh_141
    get '/velocity/knot/70.0/kh'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":129.64}', last_response.body
  end

  def test_velocity_mph_to_fts_142
    get '/velocity/mph/91.0/fts'
    assert_equal 200, last_response.status
  end

  def test_velocity_fts_to_ms_143
    get '/velocity/fts/36.0/ms'
    assert_equal 200, last_response.status
  end

  def test_velocity_ms_to_kh_144
    get '/velocity/ms/58.0/kh'
    assert_equal 200, last_response.status
  end

  def test_velocity_kh_to_kh_145
    get '/velocity/kh/27.0/kh'
    assert_equal 200, last_response.status
  end

  def test_velocity_mph_to_ms_146
    get '/velocity/mph/15.0/ms'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":6.71}', last_response.body
  end

  def test_velocity_kh_to_ms_147
    get '/velocity/kh/85.0/ms'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":23.61}', last_response.body
  end

  def test_velocity_mph_to_ms_148
    get '/velocity/mph/77.0/ms'
    assert_equal 200, last_response.status
  end

  def test_velocity_fts_to_ms_149
    get '/velocity/fts/56.0/ms'
    assert_equal 200, last_response.status
    assert_equal '{"velocity":17.07}', last_response.body
  end

  def test_velocity_kh_to_mph_150
    get '/velocity/kh/100.0/mph'
    assert_equal 200, last_response.status
  end
end
