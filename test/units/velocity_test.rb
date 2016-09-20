require_relative '../test_helper'
require_relative '../../lib/velocity'

# => Teste unitário por estar testando métodos
# => Um assert_equal por teste

class VelocityTest < Minitest::Test
  def test_one_is_one
    assert_equal 1, 1
  end

  def test_velocity_kh_to_knot_0
    assert_equal 442.23, Velocity::Velocity.new(819.0, 'kh').to_knot
  end

  def test_velocity_knot_to_kh_1
    assert_equal 2_818.74, Velocity::Velocity.new(1_522.0, 'knot').to_kh
  end

  def test_velocity_mph_to_kh_2
    assert_equal 1_002.62, Velocity::Velocity.new(623.0, 'mph').to_kh
  end

  def test_velocity_kh_to_mph_3
    assert_equal 205.05, Velocity::Velocity.new(330.0, 'kh').to_mph
  end

  def test_velocity_mph_to_mph_4
    assert_equal 665.0, Velocity::Velocity.new(665.0, 'mph').to_mph
  end

  def test_velocity_ms_to_kh_5
    assert_equal 5_979.6, Velocity::Velocity.new(1_661.0, 'ms').to_kh
  end

  def test_velocity_mph_to_knot_6
    assert_equal 1_564.16, Velocity::Velocity.new(1_800.0, 'mph').to_knot
  end

  def test_velocity_ms_to_mph_7
    assert_equal 3_169.74, Velocity::Velocity.new(1_417.0, 'ms').to_mph
  end

  def test_velocity_mph_to_mph_8
    assert_equal 1_269.0, Velocity::Velocity.new(1_269.0, 'mph').to_mph
  end

  def test_velocity_mph_to_ms_9
    assert_equal 878.88, Velocity::Velocity.new(1_966.0, 'mph').to_ms
  end

  def test_velocity_mph_to_kh_10
    assert_equal 696.85, Velocity::Velocity.new(433.0, 'mph').to_kh
  end

  def test_velocity_knot_to_ms_11
    assert_equal 401.27, Velocity::Velocity.new(780.0, 'knot').to_ms
  end

  def test_velocity_knot_to_kh_12
    assert_equal 1_066.75, Velocity::Velocity.new(576.0, 'knot').to_kh
  end

  def test_velocity_kh_to_kh_13
    assert_equal 1_215.0, Velocity::Velocity.new(1_215.0, 'kh').to_kh
  end

  def test_velocity_ms_to_kh_14
    assert_equal 2_106.0, Velocity::Velocity.new(585.0, 'ms').to_kh
  end

  def test_velocity_mph_to_kh_15
    assert_equal 2_499.31, Velocity::Velocity.new(1_553.0, 'mph').to_kh
  end

  def test_velocity_knot_to_kh_16
    assert_equal 2_303.88, Velocity::Velocity.new(1_244.0, 'knot').to_kh
  end

  def test_velocity_ms_to_mph_17
    assert_equal 1_026.75, Velocity::Velocity.new(459.0, 'ms').to_mph
  end

  def test_velocity_knot_to_knot_18
    assert_equal 1_563.0, Velocity::Velocity.new(1_563.0, 'knot').to_knot
  end

  def test_velocity_knot_to_ms_19
    assert_equal 757.78, Velocity::Velocity.new(1_473.0, 'knot').to_ms
  end

  def test_velocity_mph_to_mph_20
    assert_equal 445.0, Velocity::Velocity.new(445.0, 'mph').to_mph
  end

  def test_velocity_mph_to_mph_21
    assert_equal 1_237.0, Velocity::Velocity.new(1_237.0, 'mph').to_mph
  end

  def test_velocity_kh_to_mph_22
    assert_equal 1_128.41, Velocity::Velocity.new(1_816.0, 'kh').to_mph
  end

  def test_velocity_ms_to_mph_23
    assert_equal 2_954.99, Velocity::Velocity.new(1_321.0, 'ms').to_mph
  end

  def test_velocity_mph_to_ms_24
    assert_equal 294.6, Velocity::Velocity.new(659.0, 'mph').to_ms
  end

  def test_velocity_ms_to_kh_25
    assert_equal 3_535.2, Velocity::Velocity.new(982.0, 'ms').to_kh
  end

  def test_velocity_mph_to_kh_26
    assert_equal 2_335.16, Velocity::Velocity.new(1_451.0, 'mph').to_kh
  end

  def test_velocity_knot_to_mph_27
    assert_equal 42.58, Velocity::Velocity.new(37.0, 'knot').to_mph
  end

  def test_velocity_ms_to_mph_28
    assert_equal 948.46, Velocity::Velocity.new(424.0, 'ms').to_mph
  end

  def test_velocity_knot_to_kh_29
    assert_equal 2_881.71, Velocity::Velocity.new(1_556.0, 'knot').to_kh
  end

  def test_velocity_knot_to_ms_30
    assert_equal 99.8, Velocity::Velocity.new(194.0, 'knot').to_ms
  end

  def test_velocity_mph_to_kh_31
    assert_equal 2_096.97, Velocity::Velocity.new(1_303.0, 'mph').to_kh
  end

  def test_velocity_knot_to_ms_32
    assert_equal 64.31, Velocity::Velocity.new(125.0, 'knot').to_ms
  end

  def test_velocity_kh_to_mph_33
    assert_equal 497.1, Velocity::Velocity.new(800.0, 'kh').to_mph
  end

  def test_velocity_knot_to_mph_34
    assert_equal 2_135.84, Velocity::Velocity.new(1_856.0, 'knot').to_mph
  end

  def test_velocity_kh_to_kh_35
    assert_equal 1_739.0, Velocity::Velocity.new(1_739.0, 'kh').to_kh
  end

  def test_velocity_knot_to_mph_36
    assert_equal 1_253.2, Velocity::Velocity.new(1_089.0, 'knot').to_mph
  end

  def test_velocity_kh_to_knot_37
    assert_equal 644.71, Velocity::Velocity.new(1_194.0, 'kh').to_knot
  end

  def test_velocity_ms_to_mph_38
    assert_equal 4_306.1, Velocity::Velocity.new(1_925.0, 'ms').to_mph
  end

  def test_velocity_mph_to_mph_39
    assert_equal 312.0, Velocity::Velocity.new(312.0, 'mph').to_mph
  end

  def test_velocity_knot_to_kh_40
    assert_equal 368.55, Velocity::Velocity.new(199.0, 'knot').to_kh
  end

  def test_velocity_kh_to_ms_41
    assert_equal 538.89, Velocity::Velocity.new(1_940.0, 'kh').to_ms
  end

  def test_velocity_mph_to_mph_42
    assert_equal 1_364.0, Velocity::Velocity.new(1_364.0, 'mph').to_mph
  end

  def test_velocity_kh_to_kh_43
    assert_equal 1_704.0, Velocity::Velocity.new(1_704.0, 'kh').to_kh
  end

  def test_velocity_mph_to_knot_44
    assert_equal 1_453.8, Velocity::Velocity.new(1_673.0, 'mph').to_knot
  end

  def test_velocity_mph_to_kh_45
    assert_equal 3_035.22, Velocity::Velocity.new(1_886.0, 'mph').to_kh
  end

  def test_velocity_knot_to_ms_46
    assert_equal 390.46, Velocity::Velocity.new(759.0, 'knot').to_ms
  end

  def test_velocity_mph_to_kh_47
    assert_equal 1_932.82, Velocity::Velocity.new(1_201.0, 'mph').to_kh
  end

  def test_velocity_ms_to_knot_48
    assert_equal 711.45, Velocity::Velocity.new(366.0, 'ms').to_knot
  end

  def test_velocity_ms_to_ms_49
    assert_equal 1_004.0, Velocity::Velocity.new(1_004.0, 'ms').to_ms
  end

  def test_velocity_kh_to_kh_50
    assert_equal 916.0, Velocity::Velocity.new(916.0, 'kh').to_kh
  end

  def test_velocity_knot_to_ms_51
    assert_equal 42.18, Velocity::Velocity.new(82.0, 'knot').to_ms
  end

  def test_velocity_mph_to_ms_52
    assert_equal 236.04, Velocity::Velocity.new(528.0, 'mph').to_ms
  end

  def test_velocity_knot_to_mph_53
    assert_equal 800.94, Velocity::Velocity.new(696.0, 'knot').to_mph
  end

  def test_velocity_knot_to_mph_54
    assert_equal 2_040.33, Velocity::Velocity.new(1_773.0, 'knot').to_mph
  end

  def test_velocity_ms_to_ms_55
    assert_equal 1_225.0, Velocity::Velocity.new(1_225.0, 'ms').to_ms
  end

  def test_velocity_ms_to_ms_56
    assert_equal 407.0, Velocity::Velocity.new(407.0, 'ms').to_ms
  end

  def test_velocity_mph_to_ms_57
    assert_equal 227.1, Velocity::Velocity.new(508.0, 'mph').to_ms
  end

  def test_velocity_mph_to_knot_58
    assert_equal 555.28, Velocity::Velocity.new(639.0, 'mph').to_knot
  end

  def test_velocity_knot_to_knot_59
    assert_equal 1_057.0, Velocity::Velocity.new(1_057.0, 'knot').to_knot
  end

  def test_velocity_knot_to_kh_60
    assert_equal 2_539.09, Velocity::Velocity.new(1_371.0, 'knot').to_kh
  end

  def test_velocity_ms_to_kh_61
    assert_equal 6_706.79, Velocity::Velocity.new(1_863.0, 'ms').to_kh
  end

  def test_velocity_knot_to_kh_62
    assert_equal 1_313.07, Velocity::Velocity.new(709.0, 'knot').to_kh
  end

  def test_velocity_knot_to_ms_63
    assert_equal 590.58, Velocity::Velocity.new(1_148.0, 'knot').to_ms
  end

  def test_velocity_knot_to_mph_64
    assert_equal 375.15, Velocity::Velocity.new(326.0, 'knot').to_mph
  end

  def test_velocity_mph_to_kh_65
    assert_equal 1_824.99, Velocity::Velocity.new(1_134.0, 'mph').to_kh
  end

  def test_velocity_kh_to_kh_66
    assert_equal 291.0, Velocity::Velocity.new(291.0, 'kh').to_kh
  end

  def test_velocity_mph_to_kh_67
    assert_equal 384.63, Velocity::Velocity.new(239.0, 'mph').to_kh
  end

  def test_velocity_ms_to_knot_68
    assert_equal 2_797.19, Velocity::Velocity.new(1_439.0, 'ms').to_knot
  end

  def test_velocity_knot_to_mph_69
    assert_equal 1_907.99, Velocity::Velocity.new(1_658.0, 'knot').to_mph
  end

  def test_velocity_kh_to_knot_70
    assert_equal 568.58, Velocity::Velocity.new(1_053.0, 'kh').to_knot
  end

  def test_velocity_knot_to_knot_71
    assert_equal 131.0, Velocity::Velocity.new(131.0, 'knot').to_knot
  end

  def test_velocity_knot_to_knot_72
    assert_equal 1_781.0, Velocity::Velocity.new(1_781.0, 'knot').to_knot
  end

  def test_velocity_mph_to_ms_73
    assert_equal 409.04, Velocity::Velocity.new(915.0, 'mph').to_ms
  end

  def test_velocity_kh_to_mph_74
    assert_equal 1_183.71, Velocity::Velocity.new(1_905.0, 'kh').to_mph
  end

  def test_velocity_ms_to_mph_75
    assert_equal 60.4, Velocity::Velocity.new(27.0, 'ms').to_mph
  end

  def test_velocity_kh_to_ms_76
    assert_equal 468.61, Velocity::Velocity.new(1_687.0, 'kh').to_ms
  end

  def test_velocity_ms_to_mph_77
    assert_equal 324.36, Velocity::Velocity.new(145.0, 'ms').to_mph
  end

  def test_velocity_ms_to_mph_78
    assert_equal 1_420.45, Velocity::Velocity.new(635.0, 'ms').to_mph
  end

  def test_velocity_ms_to_knot_79
    assert_equal 3_487.26, Velocity::Velocity.new(1_794.0, 'ms').to_knot
  end

  def test_velocity_knot_to_kh_80
    assert_equal 1_724.21, Velocity::Velocity.new(931.0, 'knot').to_kh
  end

  def test_velocity_knot_to_kh_81
    assert_equal 2_648.36, Velocity::Velocity.new(1_430.0, 'knot').to_kh
  end

  def test_velocity_ms_to_knot_82
    assert_equal 64.15, Velocity::Velocity.new(33.0, 'ms').to_knot
  end

  def test_velocity_mph_to_mph_83
    assert_equal 1_205.0, Velocity::Velocity.new(1_205.0, 'mph').to_mph
  end

  def test_velocity_knot_to_ms_84
    assert_equal 412.07, Velocity::Velocity.new(801.0, 'knot').to_ms
  end

  def test_velocity_kh_to_knot_85
    assert_equal 258.1, Velocity::Velocity.new(478.0, 'kh').to_knot
  end

  def test_velocity_ms_to_ms_86
    assert_equal 201.0, Velocity::Velocity.new(201.0, 'ms').to_ms
  end

  def test_velocity_knot_to_ms_87
    assert_equal 585.95, Velocity::Velocity.new(1_139.0, 'knot').to_ms
  end

  def test_velocity_mph_to_knot_88
    assert_equal 1_492.03, Velocity::Velocity.new(1_717.0, 'mph').to_knot
  end

  def test_velocity_ms_to_knot_89
    assert_equal 3_798.28, Velocity::Velocity.new(1_954.0, 'ms').to_knot
  end

  def test_velocity_mph_to_knot_90
    assert_equal 1_087.96, Velocity::Velocity.new(1_252.0, 'mph').to_knot
  end

  def test_velocity_ms_to_mph_91
    assert_equal 2_359.97, Velocity::Velocity.new(1_055.0, 'ms').to_mph
  end

  def test_velocity_ms_to_kh_92
    assert_equal 172.8, Velocity::Velocity.new(48.0, 'ms').to_kh
  end

  def test_velocity_knot_to_kh_93
    assert_equal 1_994.6, Velocity::Velocity.new(1_077.0, 'knot').to_kh
  end

  def test_velocity_knot_to_mph_94
    assert_equal 1_417.76, Velocity::Velocity.new(1_232.0, 'knot').to_mph
  end

  def test_velocity_kh_to_ms_95
    assert_equal 41.67, Velocity::Velocity.new(150.0, 'kh').to_ms
  end

  def test_velocity_kh_to_kh_96
    assert_equal 1_748.0, Velocity::Velocity.new(1_748.0, 'kh').to_kh
  end

  def test_velocity_kh_to_mph_97
    assert_equal 194.49, Velocity::Velocity.new(313.0, 'kh').to_mph
  end

  def test_velocity_knot_to_mph_98
    assert_equal 646.74, Velocity::Velocity.new(562.0, 'knot').to_mph
  end

  def test_velocity_mph_to_mph_99
    assert_equal 1_344.0, Velocity::Velocity.new(1_344.0, 'mph').to_mph
  end

  def test_velocity_mph_to_knot_100
    assert_equal 49.53, Velocity::Velocity.new(57.0, 'mph').to_knot
  end
end
