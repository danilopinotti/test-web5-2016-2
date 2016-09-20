require_relative '../test_helper'
require_relative '../../lib/weight'

# => Testes para peso
class WeightTest < Minitest::Test
  def test_one_is_one
    assert_equal 1, 1
  end

  def test_weight_po_to_ton_0
    assert_equal 0.3715, Weight::Weight.new(819.0, 'po').to_ton
  end

  def test_weight_g_to_g_1
    assert_equal 1_723.0, Weight::Weight.new(1_723.0, 'g').to_g
  end

  def test_weight_ton_to_g_2
    assert_equal 330_000_000.0, Weight::Weight.new(330.0, 'ton').to_g
  end

  def test_weight_ton_to_kg_3
    assert_equal 910_000.0, Weight::Weight.new(910.0, 'ton').to_kg
  end

  def test_weight_kg_to_g_4
    assert_equal 1_489_000.0, Weight::Weight.new(1_489.0, 'kg').to_g
  end

  def test_weight_ton_to_ton_5
    assert_equal 852.0, Weight::Weight.new(852.0, 'ton').to_ton
  end

  def test_weight_ton_to_oz_6
    assert_equal 69_348_684.0, Weight::Weight.new(1_966.0, 'ton').to_oz
  end

  def test_weight_ton_to_oz_7
    assert_equal 15_273_642.0, Weight::Weight.new(433.0, 'ton').to_oz
  end

  def test_weight_oz_to_kg_8
    assert_equal 6.43533, Weight::Weight.new(227.0, 'oz').to_kg
  end

  def test_weight_g_to_g_9
    assert_equal 523.0, Weight::Weight.new(523.0, 'g').to_g
  end

  def test_weight_oz_to_g_10
    assert_equal 16_584.45314, Weight::Weight.new(585.0, 'oz').to_g
  end

  def test_weight_ton_to_oz_11
    assert_equal 54_780_522.0, Weight::Weight.new(1_553.0, 'ton').to_oz
  end

  def test_weight_po_to_oz_12
    assert_equal 3_440.03901, Weight::Weight.new(215.0, 'po').to_oz
  end

  def test_weight_po_to_po_13
    assert_equal 1_582.0, Weight::Weight.new(1_582.0, 'po').to_po
  end

  def test_weight_g_to_kg_14
    assert_equal 1.087, Weight::Weight.new(1_087.0, 'g').to_kg
  end

  def test_weight_ton_to_kg_15
    assert_equal 445_000.0, Weight::Weight.new(445.0, 'ton').to_kg
  end

  def test_weight_g_to_kg_16
    assert_equal 0.721, Weight::Weight.new(721.0, 'g').to_kg
  end

  def test_weight_po_to_ton_17
    assert_equal 0.70126, Weight::Weight.new(1_546.0, 'po').to_ton
  end

  def test_weight_kg_to_g_18
    assert_equal 1_488_000.0, Weight::Weight.new(1_488.0, 'kg').to_g
  end

  def test_weight_ton_to_g_19
    assert_equal 1_451_000_000.0, Weight::Weight.new(1_451.0, 'ton').to_g
  end

  def test_weight_po_to_kg_20
    assert_equal 16.78309, Weight::Weight.new(37.0, 'po').to_kg
  end

  def test_weight_oz_to_ton_21
    assert_equal 0.01622, Weight::Weight.new(572.0, 'oz').to_ton
  end

  def test_weight_kg_to_g_22
    assert_equal 667_000.0, Weight::Weight.new(667.0, 'kg').to_g
  end

  def test_weight_po_to_oz_23
    assert_equal 2_000.02268, Weight::Weight.new(125.0, 'po').to_oz
  end

  def test_weight_g_to_kg_24
    assert_equal 0.8, Weight::Weight.new(800.0, 'g').to_kg
  end

  def test_weight_po_to_g_25
    assert_equal 652_726.11812, Weight::Weight.new(1_439.0, 'po').to_g
  end

  def test_weight_g_to_ton_26
    assert_equal 0.00075, Weight::Weight.new(745.0, 'g').to_ton
  end
end
