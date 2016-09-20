require_relative '../test_helper'
require_relative '../../lib/weight'

# => Testes para peso
class WeightTest < Minitest::Test
  def test_one_is_one
    assert_equal 1, 1
  end

  def test_weight_kg_to_kg
    assert_equal 95.0, Weight::Weight.new(95.0, 'kg').to_kg
  end

  def test_weight_kg_to_g
    assert_equal 11000.0, Weight::Weight.new(11.0, 'kg').to_g
  end

  def test_weight_kg_to_ton
    assert_equal 0.081, Weight::Weight.new(81.0, 'kg').to_ton
  end

  def test_weight_kg_to_po
    assert_equal 154.322, Weight::Weight.new(70.0, 'kg').to_po
  end

  def test_weight_kg_to_oz
    assert_equal 2222.262, Weight::Weight.new(63.0, 'kg').to_oz
  end

  def test_weight_kg_to_ct
    assert_equal 435000.0, Weight::Weight.new(87.0, 'kg').to_ct
  end

  def test_weight_g_to_kg
    assert_equal 0.075, Weight::Weight.new(75.0, 'g').to_kg
  end

  def test_weight_g_to_g
    assert_equal 9.0, Weight::Weight.new(9.0, 'g').to_g
  end

  def test_weight_g_to_ton
    assert_equal 8.0e-05, Weight::Weight.new(77.0, 'g').to_ton
  end

  def test_weight_g_to_po
    assert_equal 0.08818, Weight::Weight.new(40.0, 'g').to_po
  end

  def test_weight_g_to_oz
    assert_equal 0.1411, Weight::Weight.new(4.0, 'g').to_oz
  end

  def test_weight_g_to_ct
    assert_equal 315.0, Weight::Weight.new(63.0, 'g').to_ct
  end

  def test_weight_ton_to_kg
    assert_equal 40000.0, Weight::Weight.new(40.0, 'ton').to_kg
  end

  def test_weight_ton_to_g
    assert_equal 60000000.0, Weight::Weight.new(60.0, 'ton').to_g
  end

  def test_weight_ton_to_ton
    assert_equal 92.0, Weight::Weight.new(92.0, 'ton').to_ton
  end

  def test_weight_ton_to_po
    assert_equal 141094.4, Weight::Weight.new(64.0, 'ton').to_po
  end

  def test_weight_ton_to_oz
    assert_equal 176370.0, Weight::Weight.new(5.0, 'ton').to_oz
  end

  def test_weight_ton_to_ct
    assert_equal 60000000.0, Weight::Weight.new(12.0, 'ton').to_ct
  end

  def test_weight_po_to_kg
    assert_equal 42.18452, Weight::Weight.new(93.0, 'po').to_kg
  end

  def test_weight_po_to_g
    assert_equal 18143.88098, Weight::Weight.new(40.0, 'po').to_g
  end

  def test_weight_po_to_ton
    assert_equal 0.02223, Weight::Weight.new(49.0, 'po').to_ton
  end

  def test_weight_po_to_po
    assert_equal 83.0, Weight::Weight.new(83.0, 'po').to_po
  end

  def test_weight_po_to_oz
    assert_equal 128.00145, Weight::Weight.new(8.0, 'po').to_oz
  end

  def test_weight_po_to_ct
    assert_equal 65771.56854, Weight::Weight.new(29.0, 'po').to_ct
  end

  def test_weight_oz_to_kg
    assert_equal 1.67262, Weight::Weight.new(59.0, 'oz').to_kg
  end

  def test_weight_oz_to_g
    assert_equal 963.88275, Weight::Weight.new(34.0, 'oz').to_g
  end

  def test_weight_oz_to_ton
    assert_equal 0.00125, Weight::Weight.new(44.0, 'oz').to_ton
  end

  def test_weight_oz_to_po
    assert_equal 4.49995, Weight::Weight.new(72.0, 'oz').to_po
  end

  def test_weight_oz_to_oz
    assert_equal 19.0, Weight::Weight.new(19.0, 'oz').to_oz
  end

  def test_weight_oz_to_ct
    assert_equal 1417.47463, Weight::Weight.new(10.0, 'oz').to_ct
  end

  def test_weight_ct_to_kg
    assert_equal 0.0152, Weight::Weight.new(76.0, 'ct').to_kg
  end

  def test_weight_ct_to_g
    assert_equal 19.0, Weight::Weight.new(95.0, 'ct').to_g
  end

  def test_weight_ct_to_ton
    assert_equal 2.0e-05, Weight::Weight.new(87.0, 'ct').to_ton
  end

  def test_weight_ct_to_po
    assert_equal 0.0, Weight::Weight.new(0.0, 'ct').to_po
  end

  def test_weight_ct_to_oz
    assert_equal 0.515, Weight::Weight.new(73.0, 'ct').to_oz
  end

  def test_weight_ct_to_ct
    assert_equal 8.0, Weight::Weight.new(8.0, 'ct').to_ct
  end
end
