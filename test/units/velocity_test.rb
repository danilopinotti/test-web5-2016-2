require_relative '../test_helper'
require_relative '../../lib/velocity'

# => Teste unitário por estar testando métodos
# => Um assert_equal por teste

class VelocityTest < Minitest::Test
  def test_one_is_one
    assert_equal 1, 1
  end

  # def test_convert_from_celsius_to_fahrenheit
  #   assert_equal 96.8, Temperature::Temperature.new(36, 'celsius').to_fahrenheit
  # end

end
