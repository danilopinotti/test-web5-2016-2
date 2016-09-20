require_relative '../test_helper'
require_relative '../../lib/velocity'

# => Testes para velocidade
class VelocityTest < Minitest::Test
  def test_one_is_one
    assert_equal 1, 1
  end

  def test_velocity_knot_to_kh_0
    assert_equal 175.94, Velocity::Velocity.new(95.0, 'knot').to_kh
  end

  def test_velocity_knot_to_kh_1
    assert_equal 129.64, Velocity::Velocity.new(70.0, 'knot').to_kh
  end

  def test_velocity_ms_to_fts_2
    assert_equal 252.62, Velocity::Velocity.new(77.0, 'ms').to_fts
  end

  def test_velocity_ms_to_fts_3
    assert_equal 206.69, Velocity::Velocity.new(63.0, 'ms').to_fts
  end

  def test_velocity_ms_to_fts_4
    assert_equal 301.84, Velocity::Velocity.new(92.0, 'ms').to_fts
  end

  def test_velocity_ms_to_kh_5
    assert_equal 334.8, Velocity::Velocity.new(93.0, 'ms').to_kh
  end

  def test_velocity_mph_to_ms_6
    assert_equal 37.1, Velocity::Velocity.new(83.0, 'mph').to_ms
  end

  def test_velocity_knot_to_knot_7
    assert_equal 29.0, Velocity::Velocity.new(29.0, 'knot').to_knot
  end

  def test_velocity_fts_to_ms_8
    assert_equal 10.36, Velocity::Velocity.new(34.0, 'fts').to_ms
  end

  def test_velocity_mph_to_fts_9
    assert_equal 27.87, Velocity::Velocity.new(19.0, 'mph').to_fts
  end

  def test_velocity_knot_to_ms_10
    assert_equal 48.87, Velocity::Velocity.new(95.0, 'knot').to_ms
  end

  def test_velocity_ms_to_fts_11
    assert_equal 239.5, Velocity::Velocity.new(73.0, 'ms').to_fts
  end

  def test_velocity_knot_to_fts_12
    assert_equal 140.09, Velocity::Velocity.new(83.0, 'knot').to_fts
  end

  def test_velocity_mph_to_fts_13
    assert_equal 92.4, Velocity::Velocity.new(63.0, 'mph').to_fts
  end

  def test_velocity_kh_to_fts_14
    assert_equal 51.04, Velocity::Velocity.new(56.0, 'kh').to_fts
  end

  def test_velocity_fts_to_ms_15
    assert_equal 5.49, Velocity::Velocity.new(18.0, 'fts').to_ms
  end

  def test_velocity_kh_to_ms_16
    assert_equal 3.33, Velocity::Velocity.new(12.0, 'kh').to_ms
  end

  def test_velocity_knot_to_kh_17
    assert_equal 138.9, Velocity::Velocity.new(75.0, 'knot').to_kh
  end

  def test_velocity_ms_to_fts_18
    assert_equal 305.12, Velocity::Velocity.new(93.0, 'ms').to_fts
  end

  def test_velocity_knot_to_mph_19
    assert_equal 72.5, Velocity::Velocity.new(63.0, 'knot').to_mph
  end

  def test_velocity_mph_to_knot_20
    assert_equal 30.41, Velocity::Velocity.new(35.0, 'mph').to_knot
  end

  def test_velocity_fts_to_knot_21
    assert_equal 35.55, Velocity::Velocity.new(60.0, 'fts').to_knot
  end

  def test_velocity_mph_to_mph_22
    assert_equal 8.0, Velocity::Velocity.new(8.0, 'mph').to_mph
  end

  def test_velocity_kh_to_mph_23
    assert_equal 54.06, Velocity::Velocity.new(87.0, 'kh').to_mph
  end

  def test_velocity_mph_to_fts_24
    assert_equal 26.4, Velocity::Velocity.new(18.0, 'mph').to_fts
  end

  def test_velocity_knot_to_mph_25
    assert_equal 12.66, Velocity::Velocity.new(11.0, 'knot').to_mph
  end

  def test_velocity_knot_to_fts_26
    assert_equal 158.65, Velocity::Velocity.new(94.0, 'knot').to_fts
  end

  def test_velocity_knot_to_fts_27
    assert_equal 5.06, Velocity::Velocity.new(3.0, 'knot').to_fts
  end

  def test_velocity_mph_to_kh_28
    assert_equal 75.64, Velocity::Velocity.new(47.0, 'mph').to_kh
  end

  def test_velocity_ms_to_knot_29
    assert_equal 116.63, Velocity::Velocity.new(60.0, 'ms').to_knot
  end

  def test_velocity_ms_to_knot_30
    assert_equal 11.66, Velocity::Velocity.new(6.0, 'ms').to_knot
  end

  def test_velocity_fts_to_fts_31
    assert_equal 71.0, Velocity::Velocity.new(71.0, 'fts').to_fts
  end

  def test_velocity_knot_to_mph_32
    assert_equal 26.47, Velocity::Velocity.new(23.0, 'knot').to_mph
  end

  def test_velocity_mph_to_kh_33
    assert_equal 107.83, Velocity::Velocity.new(67.0, 'mph').to_kh
  end

  def test_velocity_knot_to_fts_34
    assert_equal 129.96, Velocity::Velocity.new(77.0, 'knot').to_fts
  end

  def test_velocity_mph_to_kh_35
    assert_equal 46.67, Velocity::Velocity.new(29.0, 'mph').to_kh
  end

  def test_velocity_knot_to_fts_36
    assert_equal 38.82, Velocity::Velocity.new(23.0, 'knot').to_fts
  end

  def test_velocity_fts_to_knot_37
    assert_equal 42.07, Velocity::Velocity.new(71.0, 'fts').to_knot
  end

  def test_velocity_kh_to_kh_38
    assert_equal 75.0, Velocity::Velocity.new(75.0, 'kh').to_kh
  end

  def test_velocity_mph_to_knot_39
    assert_equal 54.75, Velocity::Velocity.new(63.0, 'mph').to_knot
  end

  def test_velocity_kh_to_fts_40
    assert_equal 51.04, Velocity::Velocity.new(56.0, 'kh').to_fts
  end

  def test_velocity_kh_to_ms_41
    assert_equal 3.61, Velocity::Velocity.new(13.0, 'kh').to_ms
  end

  def test_velocity_ms_to_fts_42
    assert_equal 65.62, Velocity::Velocity.new(20.0, 'ms').to_fts
  end

  def test_velocity_mph_to_fts_43
    assert_equal 88.0, Velocity::Velocity.new(60.0, 'mph').to_fts
  end

  def test_velocity_knot_to_ms_44
    assert_equal 27.27, Velocity::Velocity.new(53.0, 'knot').to_ms
  end

  def test_velocity_kh_to_ms_45
    assert_equal 25.28, Velocity::Velocity.new(91.0, 'kh').to_ms
  end

  def test_velocity_kh_to_fts_46
    assert_equal 32.81, Velocity::Velocity.new(36.0, 'kh').to_fts
  end

  def test_velocity_knot_to_kh_47
    assert_equal 124.08, Velocity::Velocity.new(67.0, 'knot').to_kh
  end

  def test_velocity_fts_to_fts_48
    assert_equal 79.0, Velocity::Velocity.new(79.0, 'fts').to_fts
  end

  def test_velocity_mph_to_knot_49
    assert_equal 86.9, Velocity::Velocity.new(100.0, 'mph').to_knot
  end

  def test_velocity_fts_to_kh_50
    assert_equal 15.36, Velocity::Velocity.new(14.0, 'fts').to_kh
  end

  def test_velocity_fts_to_ms_51
    assert_equal 26.52, Velocity::Velocity.new(87.0, 'fts').to_ms
  end

  def test_velocity_fts_to_mph_52
    assert_equal 47.73, Velocity::Velocity.new(70.0, 'fts').to_mph
  end

  def test_velocity_mph_to_ms_53
    assert_equal 27.72, Velocity::Velocity.new(62.0, 'mph').to_ms
  end

  def test_velocity_mph_to_fts_54
    assert_equal 83.6, Velocity::Velocity.new(57.0, 'mph').to_fts
  end

  def test_velocity_ms_to_kh_55
    assert_equal 237.6, Velocity::Velocity.new(66.0, 'ms').to_kh
  end

  def test_velocity_kh_to_kh_56
    assert_equal 65.0, Velocity::Velocity.new(65.0, 'kh').to_kh
  end

  def test_velocity_ms_to_mph_57
    assert_equal 4.47, Velocity::Velocity.new(2.0, 'ms').to_mph
  end

  def test_velocity_ms_to_kh_58
    assert_equal 237.6, Velocity::Velocity.new(66.0, 'ms').to_kh
  end

  def test_velocity_fts_to_mph_59
    assert_equal 63.41, Velocity::Velocity.new(93.0, 'fts').to_mph
  end

  def test_velocity_kh_to_fts_60
    assert_equal 20.05, Velocity::Velocity.new(22.0, 'kh').to_fts
  end

  def test_velocity_kh_to_kh_61
    assert_equal 20.0, Velocity::Velocity.new(20.0, 'kh').to_kh
  end

  def test_velocity_knot_to_ms_62
    assert_equal 27.78, Velocity::Velocity.new(54.0, 'knot').to_ms
  end

  def test_velocity_ms_to_fts_63
    assert_equal 262.47, Velocity::Velocity.new(80.0, 'ms').to_fts
  end

  def test_velocity_ms_to_ms_64
    assert_equal 63.0, Velocity::Velocity.new(63.0, 'ms').to_ms
  end

  def test_velocity_fts_to_knot_65
    assert_equal 22.51, Velocity::Velocity.new(38.0, 'fts').to_knot
  end

  def test_velocity_knot_to_ms_66
    assert_equal 12.86, Velocity::Velocity.new(25.0, 'knot').to_ms
  end

  def test_velocity_fts_to_kh_67
    assert_equal 12.07, Velocity::Velocity.new(11.0, 'fts').to_kh
  end

  def test_velocity_knot_to_mph_68
    assert_equal 57.54, Velocity::Velocity.new(50.0, 'knot').to_mph
  end

  def test_velocity_mph_to_kh_69
    assert_equal 1.61, Velocity::Velocity.new(1.0, 'mph').to_kh
  end

  def test_velocity_mph_to_knot_70
    assert_equal 30.41, Velocity::Velocity.new(35.0, 'mph').to_knot
  end

  def test_velocity_mph_to_fts_71
    assert_equal 64.53, Velocity::Velocity.new(44.0, 'mph').to_fts
  end

  def test_velocity_knot_to_kh_72
    assert_equal 90.75, Velocity::Velocity.new(49.0, 'knot').to_kh
  end

  def test_velocity_knot_to_ms_73
    assert_equal 47.84, Velocity::Velocity.new(93.0, 'knot').to_ms
  end

  def test_velocity_ms_to_kh_74
    assert_equal 194.4, Velocity::Velocity.new(54.0, 'ms').to_kh
  end

  def test_velocity_kh_to_mph_75
    assert_equal 42.25, Velocity::Velocity.new(68.0, 'kh').to_mph
  end

  def test_velocity_knot_to_mph_76
    assert_equal 69.05, Velocity::Velocity.new(60.0, 'knot').to_mph
  end

  def test_velocity_knot_to_fts_77
    assert_equal 11.81, Velocity::Velocity.new(7.0, 'knot').to_fts
  end

  def test_velocity_knot_to_fts_78
    assert_equal 57.39, Velocity::Velocity.new(34.0, 'knot').to_fts
  end

  def test_velocity_kh_to_fts_79
    assert_equal 85.67, Velocity::Velocity.new(94.0, 'kh').to_fts
  end

  def test_velocity_kh_to_knot_80
    assert_equal 37.26, Velocity::Velocity.new(69.0, 'kh').to_knot
  end

  def test_velocity_knot_to_ms_81
    assert_equal 17.49, Velocity::Velocity.new(34.0, 'knot').to_ms
  end

  def test_velocity_fts_to_mph_82
    assert_equal 17.05, Velocity::Velocity.new(25.0, 'fts').to_mph
  end

  def test_velocity_kh_to_kh_83
    assert_equal 75.0, Velocity::Velocity.new(75.0, 'kh').to_kh
  end

  def test_velocity_fts_to_mph_84
    assert_equal 29.32, Velocity::Velocity.new(43.0, 'fts').to_mph
  end

  def test_velocity_knot_to_ms_85
    assert_equal 15.43, Velocity::Velocity.new(30.0, 'knot').to_ms
  end

  def test_velocity_kh_to_kh_86
    assert_equal 27.0, Velocity::Velocity.new(27.0, 'kh').to_kh
  end

  def test_velocity_kh_to_fts_87
    assert_equal 85.67, Velocity::Velocity.new(94.0, 'kh').to_fts
  end

  def test_velocity_knot_to_kh_88
    assert_equal 11.11, Velocity::Velocity.new(6.0, 'knot').to_kh
  end

  def test_velocity_fts_to_mph_89
    assert_equal 36.14, Velocity::Velocity.new(53.0, 'fts').to_mph
  end

  def test_velocity_fts_to_ms_90
    assert_equal 11.89, Velocity::Velocity.new(39.0, 'fts').to_ms
  end

  def test_velocity_ms_to_mph_91
    assert_equal 194.61, Velocity::Velocity.new(87.0, 'ms').to_mph
  end

  def test_velocity_ms_to_fts_92
    assert_equal 45.93, Velocity::Velocity.new(14.0, 'ms').to_fts
  end

  def test_velocity_kh_to_ms_93
    assert_equal 0.28, Velocity::Velocity.new(1.0, 'kh').to_ms
  end

  def test_velocity_mph_to_kh_94
    assert_equal 51.5, Velocity::Velocity.new(32.0, 'mph').to_kh
  end

  def test_velocity_ms_to_kh_95
    assert_equal 284.4, Velocity::Velocity.new(79.0, 'ms').to_kh
  end

  def test_velocity_ms_to_ms_96
    assert_equal 36.0, Velocity::Velocity.new(36.0, 'ms').to_ms
  end

  def test_velocity_fts_to_kh_97
    assert_equal 3.29, Velocity::Velocity.new(3.0, 'fts').to_kh
  end

  def test_velocity_mph_to_kh_98
    assert_equal 140.01, Velocity::Velocity.new(87.0, 'mph').to_kh
  end

  def test_velocity_ms_to_fts_99
    assert_equal 209.97, Velocity::Velocity.new(64.0, 'ms').to_fts
  end

  def test_velocity_knot_to_fts_100
    assert_equal 156.97, Velocity::Velocity.new(93.0, 'knot').to_fts
  end
end
