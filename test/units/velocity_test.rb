require_relative '../test_helper'
require_relative '../../lib/velocity'

# => Testes para velocidade
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
end
