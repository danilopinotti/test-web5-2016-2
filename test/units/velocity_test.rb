require_relative '../test_helper'
require_relative '../../lib/velocity'

# => Testes para velocidade
class VelocityTest < Minitest::Test
  def test_one_is_one
    assert_equal 1, 1
  end

  def test_velocity_ms_to_ms
    assert_equal 95.0, Velocity::Velocity.new(95.0, 'ms').to_ms
  end

  def test_velocity_ms_to_kh
    assert_equal 39.6, Velocity::Velocity.new(11.0, 'ms').to_kh
  end

  def test_velocity_ms_to_mph
    assert_equal 181.19, Velocity::Velocity.new(81.0, 'ms').to_mph
  end

  def test_velocity_ms_to_knot
    assert_equal 136.07, Velocity::Velocity.new(70.0, 'ms').to_knot
  end

  def test_velocity_ms_to_fts
    assert_equal 206.69, Velocity::Velocity.new(63.0, 'ms').to_fts
  end

  def test_velocity_kh_to_ms
    assert_equal 24.17, Velocity::Velocity.new(87.0, 'kh').to_ms
  end

  def test_velocity_kh_to_kh
    assert_equal 75.0, Velocity::Velocity.new(75.0, 'kh').to_kh
  end

  def test_velocity_kh_to_mph
    assert_equal 5.59, Velocity::Velocity.new(9.0, 'kh').to_mph
  end

  def test_velocity_kh_to_knot
    assert_equal 41.58, Velocity::Velocity.new(77.0, 'kh').to_knot
  end

  def test_velocity_kh_to_fts
    assert_equal 36.45, Velocity::Velocity.new(40.0, 'kh').to_fts
  end

  def test_velocity_mph_to_ms
    assert_equal 1.79, Velocity::Velocity.new(4.0, 'mph').to_ms
  end

  def test_velocity_mph_to_kh
    assert_equal 101.39, Velocity::Velocity.new(63.0, 'mph').to_kh
  end

  def test_velocity_mph_to_mph
    assert_equal 40.0, Velocity::Velocity.new(40.0, 'mph').to_mph
  end

  def test_velocity_mph_to_knot
    assert_equal 52.14, Velocity::Velocity.new(60.0, 'mph').to_knot
  end

  def test_velocity_mph_to_fts
    assert_equal 134.93, Velocity::Velocity.new(92.0, 'mph').to_fts
  end

  def test_velocity_knot_to_ms
    assert_equal 32.92, Velocity::Velocity.new(64.0, 'knot').to_ms
  end

  def test_velocity_knot_to_kh
    assert_equal 9.26, Velocity::Velocity.new(5.0, 'knot').to_kh
  end

  def test_velocity_knot_to_mph
    assert_equal 13.81, Velocity::Velocity.new(12.0, 'knot').to_mph
  end

  def test_velocity_knot_to_knot
    assert_equal 93.0, Velocity::Velocity.new(93.0, 'knot').to_knot
  end

  def test_velocity_knot_to_fts
    assert_equal 67.51, Velocity::Velocity.new(40.0, 'knot').to_fts
  end

  def test_velocity_fts_to_ms
    assert_equal 14.94, Velocity::Velocity.new(49.0, 'fts').to_ms
  end

  def test_velocity_fts_to_kh
    assert_equal 91.07, Velocity::Velocity.new(83.0, 'fts').to_kh
  end

  def test_velocity_fts_to_mph
    assert_equal 5.45, Velocity::Velocity.new(8.0, 'fts').to_mph
  end

  def test_velocity_fts_to_knot
    assert_equal 17.18, Velocity::Velocity.new(29.0, 'fts').to_knot
  end

  def test_velocity_fts_to_fts
    assert_equal 59.0, Velocity::Velocity.new(59.0, 'fts').to_fts
  end
end
