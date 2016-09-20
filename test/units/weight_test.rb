require_relative '../test_helper'
require_relative '../../lib/weight'

# => Testes para peso
class WeightTest < Minitest::Test
  def test_one_is_one
    assert_equal 1, 1
  end

  def test_weight_po_to_g_0
    assert_equal 43091.71732, Weight::Weight.new(95.0, 'po').to_g
  end

  def test_weight_ct_to_po_1
    assert_equal 0.03086, Weight::Weight.new(70.0, 'ct').to_po
  end

  def test_weight_ct_to_kg_2
    assert_equal 0.0018, Weight::Weight.new(9.0, 'ct').to_kg
  end

  def test_weight_kg_to_ct_3
    assert_equal 20000.0, Weight::Weight.new(4.0, 'kg').to_ct
  end

  def test_weight_oz_to_kg_4
    assert_equal 1.70097, Weight::Weight.new(60.0, 'oz').to_kg
  end

  def test_weight_oz_to_ct_5
    assert_equal 708.73731, Weight::Weight.new(5.0, 'oz').to_ct
  end

  def test_weight_g_to_po_6
    assert_equal 0.08818, Weight::Weight.new(40.0, 'g').to_po
  end

  def test_weight_po_to_ct_7
    assert_equal 18143.88098, Weight::Weight.new(8.0, 'po').to_ct
  end

  def test_weight_ton_to_oz_8
    assert_equal 2081166.0, Weight::Weight.new(59.0, 'ton').to_oz
  end

  def test_weight_g_to_po_9
    assert_equal 0.15873, Weight::Weight.new(72.0, 'g').to_po
  end

  def test_weight_oz_to_po_10
    assert_equal 0.62499, Weight::Weight.new(10.0, 'oz').to_po
  end

  def test_weight_kg_to_g_11
    assert_equal 87000.0, Weight::Weight.new(87.0, 'kg').to_g
  end

  def test_weight_kg_to_oz_12
    assert_equal 2575.002, Weight::Weight.new(73.0, 'kg').to_oz
  end

  def test_weight_po_to_oz_13
    assert_equal 1328.01506, Weight::Weight.new(83.0, 'po').to_oz
  end

  def test_weight_ton_to_oz_14
    assert_equal 2222262.0, Weight::Weight.new(63.0, 'ton').to_oz
  end

  def test_weight_g_to_oz_15
    assert_equal 1.97534, Weight::Weight.new(56.0, 'g').to_oz
  end

  def test_weight_oz_to_kg_16
    assert_equal 0.51029, Weight::Weight.new(18.0, 'oz').to_kg
  end

  def test_weight_g_to_kg_17
    assert_equal 0.012, Weight::Weight.new(12.0, 'g').to_kg
  end

  def test_weight_po_to_g_18
    assert_equal 34019.77683, Weight::Weight.new(75.0, 'po').to_g
  end

  def test_weight_kg_to_oz_19
    assert_equal 3280.482, Weight::Weight.new(93.0, 'kg').to_oz
  end

  def test_weight_po_to_ton_20
    assert_equal 0.02858, Weight::Weight.new(63.0, 'po').to_ton
  end

  def test_weight_ton_to_po_21
    assert_equal 77161.0, Weight::Weight.new(35.0, 'ton').to_po
  end

  def test_weight_oz_to_po_22
    assert_equal 3.74996, Weight::Weight.new(60.0, 'oz').to_po
  end

  def test_weight_ton_to_ton_23
    assert_equal 8.0, Weight::Weight.new(8.0, 'ton').to_ton
  end

  def test_weight_ct_to_g_24
    assert_equal 17.4, Weight::Weight.new(87.0, 'ct').to_g
  end

  def test_weight_ton_to_ton_25
    assert_equal 45.0, Weight::Weight.new(45.0, 'ton').to_ton
  end

  def test_weight_oz_to_po_26
    assert_equal 3.62496, Weight::Weight.new(58.0, 'oz').to_po
  end

  def test_weight_g_to_po_27
    assert_equal 0.02205, Weight::Weight.new(10.0, 'g').to_po
  end

  def test_weight_po_to_po_28
    assert_equal 28.0, Weight::Weight.new(28.0, 'po').to_po
  end

  def test_weight_ton_to_ct_29
    assert_equal 420000000.0, Weight::Weight.new(84.0, 'ton').to_ct
  end

  def test_weight_ct_to_kg_30
    assert_equal 0.012, Weight::Weight.new(60.0, 'ct').to_kg
  end

  def test_weight_kg_to_po_31
    assert_equal 112.4346, Weight::Weight.new(51.0, 'kg').to_po
  end

  def test_weight_ct_to_oz_32
    assert_equal 0.50089, Weight::Weight.new(71.0, 'ct').to_oz
  end

  def test_weight_po_to_ton_33
    assert_equal 0.01043, Weight::Weight.new(23.0, 'po').to_ton
  end

  def test_weight_ton_to_g_34
    assert_equal 67000000.0, Weight::Weight.new(67.0, 'ton').to_g
  end

  def test_weight_po_to_oz_35
    assert_equal 1232.01397, Weight::Weight.new(77.0, 'po').to_oz
  end

  def test_weight_ct_to_ton_36
    assert_equal 1.0e-05, Weight::Weight.new(29.0, 'ct').to_ton
  end

  def test_weight_g_to_po_37
    assert_equal 0.0463, Weight::Weight.new(21.0, 'g').to_po
  end

  def test_weight_oz_to_oz_38
    assert_equal 94.0, Weight::Weight.new(94.0, 'oz').to_oz
  end

  def test_weight_po_to_ct_39
    assert_equal 61235.59829, Weight::Weight.new(27.0, 'po').to_ct
  end

  def test_weight_g_to_ton_40
    assert_equal 5.0e-05, Weight::Weight.new(49.0, 'g').to_ton
  end

  def test_weight_po_to_kg_41
    assert_equal 34.92697, Weight::Weight.new(77.0, 'po').to_kg
  end

  def test_weight_g_to_oz_42
    assert_equal 0.49384, Weight::Weight.new(14.0, 'g').to_oz
  end

  def test_weight_g_to_kg_43
    assert_equal 0.013, Weight::Weight.new(13.0, 'g').to_kg
  end

  def test_weight_kg_to_oz_44
    assert_equal 705.48, Weight::Weight.new(20.0, 'kg').to_oz
  end

  def test_weight_ton_to_ct_45
    assert_equal 300000000.0, Weight::Weight.new(60.0, 'ton').to_ct
  end

  def test_weight_ct_to_po_46
    assert_equal 0.02646, Weight::Weight.new(60.0, 'ct').to_po
  end

  def test_weight_po_to_ct_47
    assert_equal 90719.40488, Weight::Weight.new(40.0, 'po').to_ct
  end

  def test_weight_kg_to_oz_48
    assert_equal 3421.578, Weight::Weight.new(97.0, 'kg').to_oz
  end

  def test_weight_g_to_ct_49
    assert_equal 190.0, Weight::Weight.new(38.0, 'g').to_ct
  end

  def test_weight_po_to_po_50
    assert_equal 52.0, Weight::Weight.new(52.0, 'po').to_po
  end

  def test_weight_oz_to_oz_51
    assert_equal 1.0, Weight::Weight.new(1.0, 'oz').to_oz
  end

  def test_weight_ct_to_ton_52
    assert_equal 2.0e-05, Weight::Weight.new(100.0, 'ct').to_ton
  end

  def test_weight_oz_to_g_53
    assert_equal 1445.82412, Weight::Weight.new(51.0, 'oz').to_g
  end

  def test_weight_oz_to_kg_54
    assert_equal 2.46641, Weight::Weight.new(87.0, 'oz').to_kg
  end

  def test_weight_oz_to_ton_55
    assert_equal 0.00198, Weight::Weight.new(70.0, 'oz').to_ton
  end

  def test_weight_ton_to_kg_56
    assert_equal 62000.0, Weight::Weight.new(62.0, 'ton').to_kg
  end

  def test_weight_ct_to_ton_57
    assert_equal 1.0e-05, Weight::Weight.new(57.0, 'ct').to_ton
  end

  def test_weight_ton_to_kg_58
    assert_equal 76000.0, Weight::Weight.new(76.0, 'ton').to_kg
  end

  def test_weight_g_to_g_59
    assert_equal 54.0, Weight::Weight.new(54.0, 'g').to_g
  end

  def test_weight_g_to_ton_60
    assert_equal 6.0e-05, Weight::Weight.new(57.0, 'g').to_ton
  end

  def test_weight_ton_to_ton_61
    assert_equal 80.0, Weight::Weight.new(80.0, 'ton').to_ton
  end

  def test_weight_g_to_ct_62
    assert_equal 440.0, Weight::Weight.new(88.0, 'g').to_ct
  end

  def test_weight_oz_to_ton_63
    assert_equal 0.00017, Weight::Weight.new(6.0, 'oz').to_ton
  end

  def test_weight_g_to_oz_64
    assert_equal 0.77603, Weight::Weight.new(22.0, 'g').to_oz
  end

  def test_weight_g_to_g_65
    assert_equal 20.0, Weight::Weight.new(20.0, 'g').to_g
  end

  def test_weight_po_to_kg_66
    assert_equal 24.49424, Weight::Weight.new(54.0, 'po').to_kg
  end

  def test_weight_ct_to_kg_67
    assert_equal 0.016, Weight::Weight.new(80.0, 'ct').to_kg
  end

  def test_weight_kg_to_kg_68
    assert_equal 63.0, Weight::Weight.new(63.0, 'kg').to_kg
  end

  def test_weight_ct_to_oz_69
    assert_equal 0.26808, Weight::Weight.new(38.0, 'ct').to_oz
  end

  def test_weight_g_to_po_70
    assert_equal 0.07716, Weight::Weight.new(35.0, 'g').to_po
  end

  def test_weight_po_to_oz_71
    assert_equal 1152.01306, Weight::Weight.new(72.0, 'po').to_oz
  end

  def test_weight_g_to_po_72
    assert_equal 0.17416, Weight::Weight.new(79.0, 'g').to_po
  end

  def test_weight_ct_to_po_73
    assert_equal 0.02205, Weight::Weight.new(50.0, 'ct').to_po
  end

  def test_weight_ton_to_ton_74
    assert_equal 66.0, Weight::Weight.new(66.0, 'ton').to_ton
  end

  def test_weight_ton_to_ct_75
    assert_equal 5000000.0, Weight::Weight.new(1.0, 'ton').to_ct
  end

  def test_weight_po_to_ton_76
    assert_equal 0.02586, Weight::Weight.new(57.0, 'po').to_ton
  end

  def test_weight_ton_to_oz_77
    assert_equal 1552056.0, Weight::Weight.new(44.0, 'ton').to_oz
  end

  def test_weight_ct_to_po_78
    assert_equal 0.02161, Weight::Weight.new(49.0, 'ct').to_po
  end

  def test_weight_g_to_ct_79
    assert_equal 275.0, Weight::Weight.new(55.0, 'g').to_ct
  end

  def test_weight_po_to_kg_80
    assert_equal 42.63812, Weight::Weight.new(94.0, 'po').to_kg
  end

  def test_weight_kg_to_ct_81
    assert_equal 270000.0, Weight::Weight.new(54.0, 'kg').to_ct
  end

  def test_weight_ct_to_oz_82
    assert_equal 0.11993, Weight::Weight.new(17.0, 'ct').to_oz
  end

  def test_weight_ton_to_oz_83
    assert_equal 599658.0, Weight::Weight.new(17.0, 'ton').to_oz
  end

  def test_weight_ton_to_po_84
    assert_equal 182981.8, Weight::Weight.new(83.0, 'ton').to_po
  end

  def test_weight_po_to_oz_85
    assert_equal 544.00617, Weight::Weight.new(34.0, 'po').to_oz
  end

  def test_weight_g_to_oz_86
    assert_equal 3.31576, Weight::Weight.new(94.0, 'g').to_oz
  end

  def test_weight_ct_to_g_87
    assert_equal 13.8, Weight::Weight.new(69.0, 'ct').to_g
  end

  def test_weight_ton_to_ct_88
    assert_equal 295000000.0, Weight::Weight.new(59.0, 'ton').to_ct
  end

  def test_weight_oz_to_ton_89
    assert_equal 0.00071, Weight::Weight.new(25.0, 'oz').to_ton
  end

  def test_weight_g_to_g_90
    assert_equal 75.0, Weight::Weight.new(75.0, 'g').to_g
  end

  def test_weight_oz_to_ton_91
    assert_equal 0.00122, Weight::Weight.new(43.0, 'oz').to_ton
  end

  def test_weight_po_to_ct_92
    assert_equal 68039.55366, Weight::Weight.new(30.0, 'po').to_ct
  end

  def test_weight_kg_to_ct_93
    assert_equal 235000.0, Weight::Weight.new(47.0, 'kg').to_ct
  end

  def test_weight_g_to_g_94
    assert_equal 27.0, Weight::Weight.new(27.0, 'g').to_g
  end

  def test_weight_g_to_ct_95
    assert_equal 470.0, Weight::Weight.new(94.0, 'g').to_ct
  end

  def test_weight_oz_to_po_96
    assert_equal 1.81248, Weight::Weight.new(29.0, 'oz').to_po
  end

  def test_weight_ct_to_oz_97
    assert_equal 0.68432, Weight::Weight.new(97.0, 'ct').to_oz
  end

  def test_weight_oz_to_kg_98
    assert_equal 2.77825, Weight::Weight.new(98.0, 'oz').to_kg
  end

  def test_weight_kg_to_ct_99
    assert_equal 435000.0, Weight::Weight.new(87.0, 'kg').to_ct
  end

  def test_weight_kg_to_oz_100
    assert_equal 3174.66, Weight::Weight.new(90.0, 'kg').to_oz
  end
end
