require_relative '../test_helper'
require_relative '../../lib/weight'

# => Teste unitário por estar testando métodos
# => Um assert_equal por teste

class WeightTest < Minitest::Test
  def test_one_is_one
    assert_equal 1, 1
  end

  def test_weight_po_to_ton_0
    assert_equal 0.3715, Weight::Weight.new(819.0, 'po').to_ton
  end

  def test_weight_g_to_g_1
    assert_equal 1723.0, Weight::Weight.new(1723.0, 'g').to_g
  end

  def test_weight_ton_to_g_2
    assert_equal 330000000.0, Weight::Weight.new(330.0, 'ton').to_g
  end

  def test_weight_ton_to_kg_3
    assert_equal 910000.0, Weight::Weight.new(910.0, 'ton').to_kg
  end

  def test_weight_kg_to_g_4
    assert_equal 1489000.0, Weight::Weight.new(1489.0, 'kg').to_g
  end

  def test_weight_ton_to_ton_5
    assert_equal 852.0, Weight::Weight.new(852.0, 'ton').to_ton
  end

  def test_weight_ton_to_oz_6
    assert_equal 69348684.0, Weight::Weight.new(1966.0, 'ton').to_oz
  end

  def test_weight_ton_to_oz_7
    assert_equal 15273642.0, Weight::Weight.new(433.0, 'ton').to_oz
  end

  def test_weight_oz_to_kg_8
    assert_equal 6.43533, Weight::Weight.new(227.0, 'oz').to_kg
  end

  def test_weight_g_to_g_9
    assert_equal 523.0, Weight::Weight.new(523.0, 'g').to_g
  end

  def test_weight_oz_to_g_10
    assert_equal 16584.45314, Weight::Weight.new(585.0, 'oz').to_g
  end

  def test_weight_ton_to_oz_11
    assert_equal 54780522.0, Weight::Weight.new(1553.0, 'ton').to_oz
  end

  def test_weight_po_to_oz_12
    assert_equal 3440.03901, Weight::Weight.new(215.0, 'po').to_oz
  end

  def test_weight_po_to_po_13
    assert_equal 1582.0, Weight::Weight.new(1582.0, 'po').to_po
  end

  def test_weight_g_to_kg_14
    assert_equal 1.087, Weight::Weight.new(1087.0, 'g').to_kg
  end

  def test_weight_ton_to_kg_15
    assert_equal 445000.0, Weight::Weight.new(445.0, 'ton').to_kg
  end

  def test_weight_g_to_kg_16
    assert_equal 0.721, Weight::Weight.new(721.0, 'g').to_kg
  end

  def test_weight_po_to_ton_17
    assert_equal 0.70126, Weight::Weight.new(1546.0, 'po').to_ton
  end

  def test_weight_kg_to_g_18
    assert_equal 1488000.0, Weight::Weight.new(1488.0, 'kg').to_g
  end

  def test_weight_ton_to_g_19
    assert_equal 1451000000.0, Weight::Weight.new(1451.0, 'ton').to_g
  end

  def test_weight_po_to_kg_20
    assert_equal 16.78309, Weight::Weight.new(37.0, 'po').to_kg
  end

  def test_weight_oz_to_ton_21
    assert_equal 0.01622, Weight::Weight.new(572.0, 'oz').to_ton
  end

  def test_weight_kg_to_g_22
    assert_equal 667000.0, Weight::Weight.new(667.0, 'kg').to_g
  end

  def test_weight_po_to_oz_23
    assert_equal 2000.02268, Weight::Weight.new(125.0, 'po').to_oz
  end

  def test_weight_g_to_kg_24
    assert_equal 0.8, Weight::Weight.new(800.0, 'g').to_kg
  end

  def test_weight_po_to_g_25
    assert_equal 652726.11812, Weight::Weight.new(1439.0, 'po').to_g
  end

  def test_weight_g_to_ton_26
    assert_equal 0.00075, Weight::Weight.new(745.0, 'g').to_ton
  end

  def test_weight_g_to_po_27
    assert_equal 2.63229, Weight::Weight.new(1194.0, 'g').to_po
  end

  def test_weight_oz_to_ton_28
    assert_equal 0.05457, Weight::Weight.new(1925.0, 'oz').to_ton
  end

  def test_weight_ton_to_ton_29
    assert_equal 312.0, Weight::Weight.new(312.0, 'ton').to_ton
  end

  def test_weight_oz_to_g_30
    assert_equal 5641.54902, Weight::Weight.new(199.0, 'oz').to_g
  end

  def test_weight_oz_to_ton_31
    assert_equal 0.0296, Weight::Weight.new(1044.0, 'oz').to_ton
  end

  def test_weight_g_to_g_32
    assert_equal 1704.0, Weight::Weight.new(1704.0, 'g').to_g
  end

  def test_weight_po_to_po_33
    assert_equal 1673.0, Weight::Weight.new(1673.0, 'po').to_po
  end

  def test_weight_g_to_g_34
    assert_equal 1528.0, Weight::Weight.new(1528.0, 'g').to_g
  end

  def test_weight_kg_to_po_35
    assert_equal 806.8836, Weight::Weight.new(366.0, 'kg').to_po
  end

  def test_weight_kg_to_oz_36
    assert_equal 35415.096, Weight::Weight.new(1004.0, 'kg').to_oz
  end

  def test_weight_g_to_ton_37
    assert_equal 0.00092, Weight::Weight.new(916.0, 'g').to_ton
  end

  def test_weight_kg_to_kg_38
    assert_equal 1663.0, Weight::Weight.new(1663.0, 'kg').to_kg
  end

  def test_weight_oz_to_kg_39
    assert_equal 32.03493, Weight::Weight.new(1130.0, 'oz').to_kg
  end

  def test_weight_po_to_ton_40
    assert_equal 0.53298, Weight::Weight.new(1175.0, 'po').to_ton
  end

  def test_weight_oz_to_oz_41
    assert_equal 1225.0, Weight::Weight.new(1225.0, 'oz').to_oz
  end

  def test_weight_oz_to_kg_42
    assert_equal 11.53824, Weight::Weight.new(407.0, 'oz').to_kg
  end

  def test_weight_oz_to_ton_43
    assert_equal 0.0144, Weight::Weight.new(508.0, 'oz').to_ton
  end

  def test_weight_g_to_po_44
    assert_equal 2.89905, Weight::Weight.new(1315.0, 'g').to_po
  end

  def test_weight_kg_to_g_45
    assert_equal 1923000.0, Weight::Weight.new(1923.0, 'kg').to_g
  end

  def test_weight_oz_to_po_46
    assert_equal 71.74919, Weight::Weight.new(1148.0, 'oz').to_po
  end

  def test_weight_ton_to_po_47
    assert_equal 1565266.0, Weight::Weight.new(710.0, 'ton').to_po
  end

  def test_weight_g_to_g_48
    assert_equal 137.0, Weight::Weight.new(137.0, 'g').to_g
  end

  def test_weight_oz_to_po_49
    assert_equal 89.93648, Weight::Weight.new(1439.0, 'oz').to_po
  end

  def test_weight_po_to_ton_50
    assert_equal 0.75206, Weight::Weight.new(1658.0, 'po').to_ton
  end

  def test_weight_po_to_po_51
    assert_equal 1053.0, Weight::Weight.new(1053.0, 'po').to_po
  end

  def test_weight_po_to_po_52
    assert_equal 595.0, Weight::Weight.new(595.0, 'po').to_po
  end

  def test_weight_kg_to_g_53
    assert_equal 1698000.0, Weight::Weight.new(1698.0, 'kg').to_g
  end

  def test_weight_ton_to_po_54
    assert_equal 1342601.4, Weight::Weight.new(609.0, 'ton').to_po
  end

  def test_weight_ton_to_oz_55
    assert_equal 43034280.0, Weight::Weight.new(1220.0, 'ton').to_oz
  end

  def test_weight_kg_to_ton_56
    assert_equal 0.145, Weight::Weight.new(145.0, 'kg').to_ton
  end

  def test_weight_kg_to_ton_57
    assert_equal 0.635, Weight::Weight.new(635.0, 'kg').to_ton
  end

  def test_weight_po_to_po_58
    assert_equal 1364.0, Weight::Weight.new(1364.0, 'po').to_po
  end

  def test_weight_po_to_g_59
    assert_equal 648643.7449, Weight::Weight.new(1430.0, 'po').to_g
  end

  def test_weight_po_to_ton_60
    assert_equal 0.59875, Weight::Weight.new(1320.0, 'po').to_ton
  end

  def test_weight_oz_to_po_61
    assert_equal 50.06193, Weight::Weight.new(801.0, 'oz').to_po
  end

  def test_weight_kg_to_kg_62
    assert_equal 201.0, Weight::Weight.new(201.0, 'kg').to_kg
  end

  def test_weight_oz_to_ton_63
    assert_equal 0.03229, Weight::Weight.new(1139.0, 'oz').to_ton
  end

  def test_weight_oz_to_ton_64
    assert_equal 0.01361, Weight::Weight.new(480.0, 'oz').to_ton
  end

  def test_weight_kg_to_kg_65
    assert_equal 915.0, Weight::Weight.new(915.0, 'kg').to_kg
  end

  def test_weight_kg_to_oz_66
    assert_equal 19894.536, Weight::Weight.new(564.0, 'kg').to_oz
  end

  def test_weight_g_to_g_67
    assert_equal 1748.0, Weight::Weight.new(1748.0, 'g').to_g
  end

  def test_weight_ton_to_kg_68
    assert_equal 313000.0, Weight::Weight.new(313.0, 'ton').to_kg
  end

  def test_weight_ton_to_g_69
    assert_equal 1418000000.0, Weight::Weight.new(1418.0, 'ton').to_g
  end

  def test_weight_po_to_oz_70
    assert_equal 16416.18616, Weight::Weight.new(1026.0, 'po').to_oz
  end

  def test_weight_ton_to_kg_71
    assert_equal 405000.0, Weight::Weight.new(405.0, 'ton').to_kg
  end

  def test_weight_ton_to_g_72
    assert_equal 1475000000.0, Weight::Weight.new(1475.0, 'ton').to_g
  end

  def test_weight_ton_to_g_73
    assert_equal 1146000000.0, Weight::Weight.new(1146.0, 'ton').to_g
  end

  def test_weight_g_to_oz_74
    assert_equal 47.37298, Weight::Weight.new(1343.0, 'g').to_oz
  end

  def test_weight_g_to_po_75
    assert_equal 2.79984, Weight::Weight.new(1270.0, 'g').to_po
  end

  def test_weight_po_to_kg_76
    assert_equal 454.95782, Weight::Weight.new(1003.0, 'po').to_kg
  end

  def test_weight_po_to_kg_77
    assert_equal 738.90955, Weight::Weight.new(1629.0, 'po').to_kg
  end

  def test_weight_ton_to_oz_78
    assert_equal 8712678.0, Weight::Weight.new(247.0, 'ton').to_oz
  end

  def test_weight_po_to_ton_79
    assert_equal 0.32886, Weight::Weight.new(725.0, 'po').to_ton
  end

  def test_weight_ton_to_kg_80
    assert_equal 476000.0, Weight::Weight.new(476.0, 'ton').to_kg
  end

  def test_weight_po_to_ton_81
    assert_equal 0.55293, Weight::Weight.new(1219.0, 'po').to_ton
  end

  def test_weight_oz_to_ton_82
    assert_equal 0.03274, Weight::Weight.new(1155.0, 'oz').to_ton
  end

  def test_weight_oz_to_kg_83
    assert_equal 15.70562, Weight::Weight.new(554.0, 'oz').to_kg
  end

  def test_weight_g_to_kg_84
    assert_equal 0.986, Weight::Weight.new(986.0, 'g').to_kg
  end

  def test_weight_po_to_kg_85
    assert_equal 572.43944, Weight::Weight.new(1262.0, 'po').to_kg
  end

  def test_weight_oz_to_po_86
    assert_equal 52.37441, Weight::Weight.new(838.0, 'oz').to_po
  end

  def test_weight_g_to_ton_87
    assert_equal 0.00158, Weight::Weight.new(1577.0, 'g').to_ton
  end

  def test_weight_po_to_kg_88
    assert_equal 467.65853, Weight::Weight.new(1031.0, 'po').to_kg
  end

  def test_weight_g_to_g_89
    assert_equal 244.0, Weight::Weight.new(244.0, 'g').to_g
  end

  def test_weight_oz_to_po_90
    assert_equal 66.06175, Weight::Weight.new(1057.0, 'oz').to_po
  end

  def test_weight_kg_to_kg_91
    assert_equal 1004.0, Weight::Weight.new(1004.0, 'kg').to_kg
  end

  def test_weight_kg_to_po_92
    assert_equal 268.9612, Weight::Weight.new(122.0, 'kg').to_po
  end

  def test_weight_oz_to_kg_93
    assert_equal 30.02211, Weight::Weight.new(1059.0, 'oz').to_kg
  end

  def test_weight_po_to_g_94
    assert_equal 241313.61698, Weight::Weight.new(532.0, 'po').to_g
  end

  def test_weight_po_to_kg_95
    assert_equal 270.79742, Weight::Weight.new(597.0, 'po').to_kg
  end

  def test_weight_ton_to_ton_96
    assert_equal 895.0, Weight::Weight.new(895.0, 'ton').to_ton
  end

  def test_weight_po_to_g_97
    assert_equal 847319.24159, Weight::Weight.new(1868.0, 'po').to_g
  end

  def test_weight_po_to_g_98
    assert_equal 822371.40524, Weight::Weight.new(1813.0, 'po').to_g
  end

  def test_weight_ton_to_oz_99
    assert_equal 66456216.0, Weight::Weight.new(1884.0, 'ton').to_oz
  end

  def test_weight_kg_to_kg_100
    assert_equal 74.0, Weight::Weight.new(74.0, 'kg').to_kg
  end

end
