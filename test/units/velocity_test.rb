require_relative '../test_helper'
require_relative '../../lib/velocity'

# => Testes para velocidade
class VelocityTest < Minitest::Test
  def test_one_is_one
    assert_equal 1, 1
  end

  def test_velocity_ms_to_knot_0
    assert_equal 15.55, Velocity::Velocity.new(8.0, 'ms').to_knot
  end

  def test_velocity_knot_to_ms_1
    assert_equal 44.76, Velocity::Velocity.new(87.0, 'knot').to_ms
  end

  def test_velocity_mph_to_ms_2
    assert_equal 4.47, Velocity::Velocity.new(10.0, 'mph').to_ms
  end

  def test_velocity_kh_to_mph_3
    assert_equal 60.89, Velocity::Velocity.new(98.0, 'kh').to_mph
  end

  def test_velocity_mph_to_mph_4
    assert_equal 98.0, Velocity::Velocity.new(98.0, 'mph').to_mph
  end

  def test_velocity_knot_to_ms_5
    assert_equal 12.35, Velocity::Velocity.new(24.0, 'knot').to_ms
  end

  def test_velocity_mph_to_ms_6
    assert_equal 26.82, Velocity::Velocity.new(60.0, 'mph').to_ms
  end

  def test_velocity_kh_to_mph_7
    assert_equal 5.59, Velocity::Velocity.new(9.0, 'kh').to_mph
  end

  def test_velocity_knot_to_ms_8
    assert_equal 1.03, Velocity::Velocity.new(2.0, 'knot').to_ms
  end

  def test_velocity_knot_to_kh_9
    assert_equal 7.41, Velocity::Velocity.new(4.0, 'knot').to_kh
  end

  def test_velocity_kh_to_knot_10
    assert_equal 7.02, Velocity::Velocity.new(13.0, 'kh').to_knot
  end

  def test_velocity_knot_to_knot_11
    assert_equal 4.0, Velocity::Velocity.new(4.0, 'knot').to_knot
  end

  def test_velocity_knot_to_kh_12
    assert_equal 124.08, Velocity::Velocity.new(67.0, 'knot').to_kh
  end

  def test_velocity_kh_to_kh_13
    assert_equal 47.0, Velocity::Velocity.new(47.0, 'kh').to_kh
  end

  def test_velocity_knot_to_knot_14
    assert_equal 14.0, Velocity::Velocity.new(14.0, 'knot').to_knot
  end

  def test_velocity_mph_to_kh_15
    assert_equal 128.75, Velocity::Velocity.new(80.0, 'mph').to_kh
  end

  def test_velocity_knot_to_mph_16
    assert_equal 108.17, Velocity::Velocity.new(94.0, 'knot').to_mph
  end

  def test_velocity_kh_to_knot_17
    assert_equal 34.02, Velocity::Velocity.new(63.0, 'kh').to_knot
  end

  def test_velocity_mph_to_kh_18
    assert_equal 90.12, Velocity::Velocity.new(56.0, 'mph').to_kh
  end

  def test_velocity_ms_to_knot_19
    assert_equal 58.32, Velocity::Velocity.new(30.0, 'ms').to_knot
  end

  def test_velocity_kh_to_mph_20
    assert_equal 24.23, Velocity::Velocity.new(39.0, 'kh').to_mph
  end

  def test_velocity_mph_to_ms_21
    assert_equal 19.67, Velocity::Velocity.new(44.0, 'mph').to_ms
  end

  def test_velocity_mph_to_kh_22
    assert_equal 90.12, Velocity::Velocity.new(56.0, 'mph').to_kh
  end

  def test_velocity_kh_to_ms_23
    assert_equal 20.56, Velocity::Velocity.new(74.0, 'kh').to_ms
  end

  def test_velocity_mph_to_mph_24
    assert_equal 13.0, Velocity::Velocity.new(13.0, 'mph').to_mph
  end

  def test_velocity_kh_to_ms_25
    assert_equal 4.72, Velocity::Velocity.new(17.0, 'kh').to_ms
  end

  def test_velocity_ms_to_knot_26
    assert_equal 97.19, Velocity::Velocity.new(50.0, 'ms').to_knot
  end

  def test_velocity_knot_to_kh_27
    assert_equal 168.53, Velocity::Velocity.new(91.0, 'knot').to_kh
  end

  def test_velocity_ms_to_kh_28
    assert_equal 280.8, Velocity::Velocity.new(78.0, 'ms').to_kh
  end

  def test_velocity_ms_to_mph_29
    assert_equal 127.51, Velocity::Velocity.new(57.0, 'ms').to_mph
  end

  def test_velocity_mph_to_knot_30
    assert_equal 2.61, Velocity::Velocity.new(3.0, 'mph').to_knot
  end

  def test_velocity_knot_to_mph_31
    assert_equal 96.67, Velocity::Velocity.new(84.0, 'knot').to_mph
  end

  def test_velocity_mph_to_knot_32
    assert_equal 75.6, Velocity::Velocity.new(87.0, 'mph').to_knot
  end

  def test_velocity_knot_to_kh_33
    assert_equal 111.12, Velocity::Velocity.new(60.0, 'knot').to_kh
  end

  def test_velocity_ms_to_knot_34
    assert_equal 93.3, Velocity::Velocity.new(48.0, 'ms').to_knot
  end

  def test_velocity_kh_to_knot_35
    assert_equal 19.44, Velocity::Velocity.new(36.0, 'kh').to_knot
  end

  def test_velocity_mph_to_mph_36
    assert_equal 38.0, Velocity::Velocity.new(38.0, 'mph').to_mph
  end

  def test_velocity_mph_to_ms_37
    assert_equal 43.81, Velocity::Velocity.new(98.0, 'mph').to_ms
  end

  def test_velocity_mph_to_kh_38
    assert_equal 152.89, Velocity::Velocity.new(95.0, 'mph').to_kh
  end

  def test_velocity_kh_to_mph_39
    assert_equal 47.22, Velocity::Velocity.new(76.0, 'kh').to_mph
  end

  def test_velocity_mph_to_ms_40
    assert_equal 18.78, Velocity::Velocity.new(42.0, 'mph').to_ms
  end

  def test_velocity_mph_to_knot_41
    assert_equal 47.79, Velocity::Velocity.new(55.0, 'mph').to_knot
  end

  def test_velocity_ms_to_mph_42
    assert_equal 118.56, Velocity::Velocity.new(53.0, 'ms').to_mph
  end

  def test_velocity_ms_to_knot_43
    assert_equal 97.19, Velocity::Velocity.new(50.0, 'ms').to_knot
  end

  def test_velocity_kh_to_kh_44
    assert_equal 23.0, Velocity::Velocity.new(23.0, 'kh').to_kh
  end

  def test_velocity_ms_to_kh_45
    assert_equal 172.8, Velocity::Velocity.new(48.0, 'ms').to_kh
  end

  def test_velocity_mph_to_mph_46
    assert_equal 25.0, Velocity::Velocity.new(25.0, 'mph').to_mph
  end

  def test_velocity_mph_to_mph_47
    assert_equal 37.0, Velocity::Velocity.new(37.0, 'mph').to_mph
  end

  def test_velocity_knot_to_knot_48
    assert_equal 58.0, Velocity::Velocity.new(58.0, 'knot').to_knot
  end

  def test_velocity_knot_to_mph_49
    assert_equal 108.17, Velocity::Velocity.new(94.0, 'knot').to_mph
  end

  def test_velocity_knot_to_ms_50
    assert_equal 33.95, Velocity::Velocity.new(66.0, 'knot').to_ms
  end

  def test_velocity_kh_to_kh_51
    assert_equal 55.0, Velocity::Velocity.new(55.0, 'kh').to_kh
  end

  def test_velocity_kh_to_knot_52
    assert_equal 48.06, Velocity::Velocity.new(89.0, 'kh').to_knot
  end

  def test_velocity_ms_to_mph_53
    assert_equal 35.79, Velocity::Velocity.new(16.0, 'ms').to_mph
  end

  def test_velocity_kh_to_ms_54
    assert_equal 22.78, Velocity::Velocity.new(82.0, 'kh').to_ms
  end

  def test_velocity_ms_to_knot_55
    assert_equal 130.24, Velocity::Velocity.new(67.0, 'ms').to_knot
  end

  def test_velocity_mph_to_ms_56
    assert_equal 8.94, Velocity::Velocity.new(20.0, 'mph').to_ms
  end

  def test_velocity_ms_to_mph_57
    assert_equal 199.09, Velocity::Velocity.new(89.0, 'ms').to_mph
  end

  def test_velocity_kh_to_mph_58
    assert_equal 7.46, Velocity::Velocity.new(12.0, 'kh').to_mph
  end

  def test_velocity_knot_to_ms_59
    assert_equal 47.84, Velocity::Velocity.new(93.0, 'knot').to_ms
  end

  def test_velocity_kh_to_kh_60
    assert_equal 44.0, Velocity::Velocity.new(44.0, 'kh').to_kh
  end

  def test_velocity_kh_to_ms_61
    assert_equal 0.0, Velocity::Velocity.new(0.0, 'kh').to_ms
  end

  def test_velocity_ms_to_mph_62
    assert_equal 120.79, Velocity::Velocity.new(54.0, 'ms').to_mph
  end

  def test_velocity_kh_to_knot_63
    assert_equal 8.64, Velocity::Velocity.new(16.0, 'kh').to_knot
  end

  def test_velocity_mph_to_knot_64
    assert_equal 78.21, Velocity::Velocity.new(90.0, 'mph').to_knot
  end

  def test_velocity_mph_to_mph_65
    assert_equal 94.0, Velocity::Velocity.new(94.0, 'mph').to_mph
  end

  def test_velocity_ms_to_kh_66
    assert_equal 277.2, Velocity::Velocity.new(77.0, 'ms').to_kh
  end

  def test_velocity_knot_to_kh_67
    assert_equal 25.93, Velocity::Velocity.new(14.0, 'knot').to_kh
  end

  def test_velocity_ms_to_ms_68
    assert_equal 20.0, Velocity::Velocity.new(20.0, 'ms').to_ms
  end

  def test_velocity_mph_to_ms_69
    assert_equal 41.57, Velocity::Velocity.new(93.0, 'mph').to_ms
  end

  def test_velocity_mph_to_knot_70
    assert_equal 71.26, Velocity::Velocity.new(82.0, 'mph').to_knot
  end

  def test_velocity_mph_to_knot_71
    assert_equal 81.68, Velocity::Velocity.new(94.0, 'mph').to_knot
  end

  def test_velocity_knot_to_kh_72
    assert_equal 3.7, Velocity::Velocity.new(2.0, 'knot').to_kh
  end

  def test_velocity_mph_to_kh_73
    assert_equal 144.84, Velocity::Velocity.new(90.0, 'mph').to_kh
  end

  def test_velocity_mph_to_kh_74
    assert_equal 154.5, Velocity::Velocity.new(96.0, 'mph').to_kh
  end

  def test_velocity_knot_to_ms_75
    assert_equal 15.43, Velocity::Velocity.new(30.0, 'knot').to_ms
  end

  def test_velocity_mph_to_mph_76
    assert_equal 37.0, Velocity::Velocity.new(37.0, 'mph').to_mph
  end

  def test_velocity_mph_to_kh_77
    assert_equal 27.36, Velocity::Velocity.new(17.0, 'mph').to_kh
  end

  def test_velocity_kh_to_kh_78
    assert_equal 81.0, Velocity::Velocity.new(81.0, 'kh').to_kh
  end

  def test_velocity_knot_to_ms_79
    assert_equal 33.95, Velocity::Velocity.new(66.0, 'knot').to_ms
  end

  def test_velocity_kh_to_ms_80
    assert_equal 3.06, Velocity::Velocity.new(11.0, 'kh').to_ms
  end

  def test_velocity_ms_to_mph_81
    assert_equal 85.0, Velocity::Velocity.new(38.0, 'ms').to_mph
  end

  def test_velocity_kh_to_knot_82
    assert_equal 29.7, Velocity::Velocity.new(55.0, 'kh').to_knot
  end

  def test_velocity_ms_to_mph_83
    assert_equal 114.08, Velocity::Velocity.new(51.0, 'ms').to_mph
  end

  def test_velocity_kh_to_kh_84
    assert_equal 53.0, Velocity::Velocity.new(53.0, 'kh').to_kh
  end

  def test_velocity_kh_to_ms_85
    assert_equal 11.67, Velocity::Velocity.new(42.0, 'kh').to_ms
  end

  def test_velocity_knot_to_mph_86
    assert_equal 18.41, Velocity::Velocity.new(16.0, 'knot').to_mph
  end

  def test_velocity_knot_to_mph_87
    assert_equal 63.29, Velocity::Velocity.new(55.0, 'knot').to_mph
  end

  def test_velocity_kh_to_ms_88
    assert_equal 11.67, Velocity::Velocity.new(42.0, 'kh').to_ms
  end

  def test_velocity_ms_to_ms_89
    assert_equal 37.0, Velocity::Velocity.new(37.0, 'ms').to_ms
  end

  def test_velocity_mph_to_mph_90
    assert_equal 99.0, Velocity::Velocity.new(99.0, 'mph').to_mph
  end

  def test_velocity_kh_to_ms_91
    assert_equal 27.5, Velocity::Velocity.new(99.0, 'kh').to_ms
  end

  def test_velocity_kh_to_mph_92
    assert_equal 43.5, Velocity::Velocity.new(70.0, 'kh').to_mph
  end

  def test_velocity_knot_to_ms_93
    assert_equal 49.39, Velocity::Velocity.new(96.0, 'knot').to_ms
  end

  def test_velocity_kh_to_kh_94
    assert_equal 9.0, Velocity::Velocity.new(9.0, 'kh').to_kh
  end

  def test_velocity_knot_to_mph_95
    assert_equal 39.13, Velocity::Velocity.new(34.0, 'knot').to_mph
  end

  def test_velocity_kh_to_kh_96
    assert_equal 11.0, Velocity::Velocity.new(11.0, 'kh').to_kh
  end

  def test_velocity_kh_to_knot_97
    assert_equal 19.44, Velocity::Velocity.new(36.0, 'kh').to_knot
  end

  def test_velocity_kh_to_ms_98
    assert_equal 7.22, Velocity::Velocity.new(26.0, 'kh').to_ms
  end

  def test_velocity_kh_to_knot_99
    assert_equal 19.44, Velocity::Velocity.new(36.0, 'kh').to_knot
  end

  def test_velocity_mph_to_ms_100
    assert_equal 38.0, Velocity::Velocity.new(85.0, 'mph').to_ms
  end
end
