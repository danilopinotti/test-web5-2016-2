require_relative '../test_helper'
require_relative '../../lib/weight'

# => Testes para peso
class WeightTest < Minitest::Test
  def test_one_is_one
    assert_equal 1, 1
  end

  def test_weight_kg_to_po_0
    assert_equal 17.6368, Weight::Weight.new(8.0, 'kg').to_po
  end

  def test_weight_kg_to_ton_1
    assert_equal 0.087, Weight::Weight.new(87.0, 'kg').to_ton
  end

  def test_weight_oz_to_ton_2
    assert_equal 0.00266, Weight::Weight.new(94.0, 'oz').to_ton
  end

  def test_weight_ton_to_ton_3
    assert_equal 53.0, Weight::Weight.new(53.0, 'ton').to_ton
  end

  def test_weight_ton_to_g_4
    assert_equal 14000000.0, Weight::Weight.new(14.0, 'ton').to_g
  end

  def test_weight_oz_to_po_5
    assert_equal 1.49998, Weight::Weight.new(24.0, 'oz').to_po
  end

  def test_weight_ton_to_kg_6
    assert_equal 60000.0, Weight::Weight.new(60.0, 'ton').to_kg
  end

  def test_weight_ton_to_po_7
    assert_equal 19841.4, Weight::Weight.new(9.0, 'ton').to_po
  end

  def test_weight_g_to_po_8
    assert_equal 0.00882, Weight::Weight.new(4.0, 'g').to_po
  end

  def test_weight_po_to_po_9
    assert_equal 4.0, Weight::Weight.new(4.0, 'po').to_po
  end

  def test_weight_g_to_g_10
    assert_equal 67.0, Weight::Weight.new(67.0, 'g').to_g
  end

  def test_weight_po_to_kg_11
    assert_equal 27.66942, Weight::Weight.new(61.0, 'po').to_kg
  end

  def test_weight_g_to_g_12
    assert_equal 2.0, Weight::Weight.new(2.0, 'g').to_g
  end

  def test_weight_po_to_ton_13
    assert_equal 0.04264, Weight::Weight.new(94.0, 'po').to_ton
  end

  def test_weight_po_to_kg_14
    assert_equal 28.57661, Weight::Weight.new(63.0, 'po').to_kg
  end

  def test_weight_kg_to_oz_15
    assert_equal 1_058.22, Weight::Weight.new(30.0, 'kg').to_oz
  end

  def test_weight_kg_to_kg_16
    assert_equal 18.0, Weight::Weight.new(18.0, 'kg').to_kg
  end

  def test_weight_ton_to_g_17
    assert_equal 34000000.0, Weight::Weight.new(34.0, 'ton').to_g
  end

  def test_weight_ton_to_g_18
    assert_equal 72000000.0, Weight::Weight.new(72.0, 'ton').to_g
  end

  def test_weight_oz_to_ton_19
    assert_equal 0.0015, Weight::Weight.new(53.0, 'oz').to_ton
  end

  def test_weight_po_to_po_20
    assert_equal 91.0, Weight::Weight.new(91.0, 'po').to_po
  end

  def test_weight_kg_to_g_21
    assert_equal 53000.0, Weight::Weight.new(53.0, 'kg').to_g
  end

  def test_weight_ton_to_po_22
    assert_equal 167549.6, Weight::Weight.new(76.0, 'ton').to_po
  end

  def test_weight_po_to_oz_23
    assert_equal 1_120.0127, Weight::Weight.new(70.0, 'po').to_oz
  end

  def test_weight_ton_to_oz_24
    assert_equal 2_786_646.0, Weight::Weight.new(79.0, 'ton').to_oz
  end

  def test_weight_g_to_kg_25
    assert_equal 0.003, Weight::Weight.new(3.0, 'g').to_kg
  end

  def test_weight_po_to_oz_26
    assert_equal 832.00943, Weight::Weight.new(52.0, 'po').to_oz
  end

  def test_weight_ton_to_ton_27
    assert_equal 5.0, Weight::Weight.new(5.0, 'ton').to_ton
  end

  def test_weight_ton_to_oz_28
    assert_equal 2_963_016.0, Weight::Weight.new(84.0, 'ton').to_oz
  end

  def test_weight_ton_to_ton_29
    assert_equal 33.0, Weight::Weight.new(33.0, 'ton').to_ton
  end

  def test_weight_kg_to_ton_30
    assert_equal 0.022, Weight::Weight.new(22.0, 'kg').to_ton
  end

  def test_weight_ton_to_po_31
    assert_equal 121_253.0, Weight::Weight.new(55.0, 'ton').to_po
  end

  def test_weight_oz_to_ton_32
    assert_equal 0.0015, Weight::Weight.new(53.0, 'oz').to_ton
  end

  def test_weight_po_to_g_33
    assert_equal 30_844.59766, Weight::Weight.new(68.0, 'po').to_g
  end

  def test_weight_kg_to_g_34
    assert_equal 48_000.0, Weight::Weight.new(48.0, 'kg').to_g
  end

  def test_weight_ton_to_oz_35
    assert_equal 1_904_796.0, Weight::Weight.new(54.0, 'ton').to_oz
  end

  def test_weight_po_to_po_36
    assert_equal 58.0, Weight::Weight.new(58.0, 'po').to_po
  end

  def test_weight_g_to_ton_37
    assert_equal 3.0e-05, Weight::Weight.new(30.0, 'g').to_ton
  end

  def test_weight_g_to_g_38
    assert_equal 24.0, Weight::Weight.new(24.0, 'g').to_g
  end

  def test_weight_po_to_kg_39
    assert_equal 20.41187, Weight::Weight.new(45.0, 'po').to_kg
  end

  def test_weight_ton_to_oz_40
    assert_equal 423_288.0, Weight::Weight.new(12.0, 'ton').to_oz
  end

  def test_weight_oz_to_oz_41
    assert_equal 67.0, Weight::Weight.new(67.0, 'oz').to_oz
  end

  def test_weight_kg_to_g_42
    assert_equal 10_000.0, Weight::Weight.new(10.0, 'kg').to_g
  end

  def test_weight_oz_to_ton_43
    assert_equal 0.00204, Weight::Weight.new(72.0, 'oz').to_ton
  end

  def test_weight_oz_to_oz_44
    assert_equal 93.0, Weight::Weight.new(93.0, 'oz').to_oz
  end

  def test_weight_kg_to_g_45
    assert_equal 57000.0, Weight::Weight.new(57.0, 'kg').to_g
  end

  def test_weight_oz_to_ton_46
    assert_equal 0.00153, Weight::Weight.new(54.0, 'oz').to_ton
  end

  def test_weight_po_to_ton_47
    assert_equal 0.00726, Weight::Weight.new(16.0, 'po').to_ton
  end

  def test_weight_po_to_oz_48
    assert_equal 544.00617, Weight::Weight.new(34.0, 'po').to_oz
  end

  def test_weight_po_to_g_49
    assert_equal 453.59702, Weight::Weight.new(1.0, 'po').to_g
  end

  def test_weight_kg_to_kg_50
    assert_equal 20.0, Weight::Weight.new(20.0, 'kg').to_kg
  end

  def test_weight_ton_to_oz_51
    assert_equal 3280482.0, Weight::Weight.new(93.0, 'ton').to_oz
  end

  def test_weight_ton_to_ton_52
    assert_equal 82.0, Weight::Weight.new(82.0, 'ton').to_ton
  end

  def test_weight_g_to_ton_53
    assert_equal 6.0e-05, Weight::Weight.new(63.0, 'g').to_ton
  end

  def test_weight_g_to_ton_54
    assert_equal 9.0e-05, Weight::Weight.new(87.0, 'g').to_ton
  end

  def test_weight_kg_to_ton_55
    assert_equal 0.093, Weight::Weight.new(93.0, 'kg').to_ton
  end

  def test_weight_po_to_oz_56
    assert_equal 848.00962, Weight::Weight.new(53.0, 'po').to_oz
  end

  def test_weight_ton_to_g_57
    assert_equal 37000000.0, Weight::Weight.new(37.0, 'ton').to_g
  end

  def test_weight_g_to_g_58
    assert_equal 10.0, Weight::Weight.new(10.0, 'g').to_g
  end

  def test_weight_oz_to_ton_59
    assert_equal 0.00187, Weight::Weight.new(66.0, 'oz').to_ton
  end

  def test_weight_oz_to_oz_60
    assert_equal 11.0, Weight::Weight.new(11.0, 'oz').to_oz
  end

  def test_weight_g_to_po_61
    assert_equal 0.0485, Weight::Weight.new(22.0, 'g').to_po
  end

  def test_weight_ton_to_ton_62
    assert_equal 48.0, Weight::Weight.new(48.0, 'ton').to_ton
  end

  def test_weight_g_to_g_63
    assert_equal 53.0, Weight::Weight.new(53.0, 'g').to_g
  end

  def test_weight_oz_to_kg_64
    assert_equal 1.19068, Weight::Weight.new(42.0, 'oz').to_kg
  end

  def test_weight_po_to_oz_65
    assert_equal 816.00925, Weight::Weight.new(51.0, 'po').to_oz
  end

  def test_weight_kg_to_kg_66
    assert_equal 42.0, Weight::Weight.new(42.0, 'kg').to_kg
  end

  def test_weight_g_to_po_67
    assert_equal 0.17637, Weight::Weight.new(80.0, 'g').to_po
  end

  def test_weight_po_to_g_68
    assert_equal 907.19405, Weight::Weight.new(2.0, 'po').to_g
  end

  def test_weight_ton_to_kg_69
    assert_equal 16000.0, Weight::Weight.new(16.0, 'ton').to_kg
  end

  def test_weight_kg_to_g_70
    assert_equal 47000.0, Weight::Weight.new(47.0, 'kg').to_g
  end

  def test_weight_ton_to_po_71
    assert_equal 108025.4, Weight::Weight.new(49.0, 'ton').to_po
  end

  def test_weight_g_to_oz_72
    assert_equal 0.38801, Weight::Weight.new(11.0, 'g').to_oz
  end

  def test_weight_po_to_ton_73
    assert_equal 0.04218, Weight::Weight.new(93.0, 'po').to_ton
  end

  def test_weight_oz_to_g_74
    assert_equal 1474.17361, Weight::Weight.new(52.0, 'oz').to_g
  end

  def test_weight_oz_to_po_75
    assert_equal 1.93748, Weight::Weight.new(31.0, 'oz').to_po
  end

  def test_weight_po_to_ton_76
    assert_equal 0.03084, Weight::Weight.new(68.0, 'po').to_ton
  end

  def test_weight_po_to_ton_77
    assert_equal 0.01633, Weight::Weight.new(36.0, 'po').to_ton
  end

  def test_weight_kg_to_ton_78
    assert_equal 0.013, Weight::Weight.new(13.0, 'kg').to_ton
  end

  def test_weight_kg_to_g_79
    assert_equal 32000.0, Weight::Weight.new(32.0, 'kg').to_g
  end

  def test_weight_oz_to_kg_80
    assert_equal 1.50252, Weight::Weight.new(53.0, 'oz').to_kg
  end

  def test_weight_kg_to_g_81
    assert_equal 59000.0, Weight::Weight.new(59.0, 'kg').to_g
  end

  def test_weight_po_to_oz_82
    assert_equal 704.00798, Weight::Weight.new(44.0, 'po').to_oz
  end

  def test_weight_kg_to_g_83
    assert_equal 66000.0, Weight::Weight.new(66.0, 'kg').to_g
  end

  def test_weight_kg_to_po_84
    assert_equal 149.9128, Weight::Weight.new(68.0, 'kg').to_po
  end

  def test_weight_g_to_g_85
    assert_equal 10.0, Weight::Weight.new(10.0, 'g').to_g
  end

  def test_weight_oz_to_oz_86
    assert_equal 2.0, Weight::Weight.new(2.0, 'oz').to_oz
  end

  def test_weight_po_to_ton_87
    assert_equal 0.01588, Weight::Weight.new(35.0, 'po').to_ton
  end

  def test_weight_oz_to_ton_88
    assert_equal 0.00054, Weight::Weight.new(19.0, 'oz').to_ton
  end

  def test_weight_oz_to_oz_89
    assert_equal 79.0, Weight::Weight.new(79.0, 'oz').to_oz
  end

  def test_weight_g_to_g_90
    assert_equal 44.0, Weight::Weight.new(44.0, 'g').to_g
  end

  def test_weight_ton_to_po_91
    assert_equal 194004.8, Weight::Weight.new(88.0, 'ton').to_po
  end

  def test_weight_kg_to_g_92
    assert_equal 8000.0, Weight::Weight.new(8.0, 'kg').to_g
  end

  def test_weight_ton_to_kg_93
    assert_equal 31000.0, Weight::Weight.new(31.0, 'ton').to_kg
  end

  def test_weight_oz_to_oz_94
    assert_equal 87.0, Weight::Weight.new(87.0, 'oz').to_oz
  end

  def test_weight_po_to_oz_95
    assert_equal 272.00308, Weight::Weight.new(17.0, 'po').to_oz
  end

  def test_weight_ton_to_po_96
    assert_equal 6613.8, Weight::Weight.new(3.0, 'ton').to_po
  end

  def test_weight_kg_to_kg_97
    assert_equal 11.0, Weight::Weight.new(11.0, 'kg').to_kg
  end

  def test_weight_ton_to_g_98
    assert_equal 6000000.0, Weight::Weight.new(6.0, 'ton').to_g
  end

  def test_weight_ton_to_kg_99
    assert_equal 76000.0, Weight::Weight.new(76.0, 'ton').to_kg
  end

  def test_weight_po_to_g_100
    assert_equal 0.0, Weight::Weight.new(0.0, 'po').to_g
  end
end
