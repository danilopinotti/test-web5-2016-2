require_relative 'weight/version'

# => Temperature Gem
module Weight
  def self.say
    'Weight'
  end

  # => Class temperature
  class Weight
    def initialize(value, type)
      load_constants

      @original_value = value.to_f
      @type = type

      @kvalue = @constants[type] * @original_value
    end # => Method initialize

    def load_constants
      @constants = Hash.new 'constants'
      @constants = {
        'kg' => 1,
        'g' => 1 / 1000,
        'ton' => 1000,
        'po' => 1 / 2.2046,
        'oz' => 1 / 35.274,
        'ct' => 1 / 5000
      }
    end

    def to_g
      @kvalue * 1000
    end

    def to_kg
      @kvalue
    end

    def to_ton
      (@kvalue / 1000)
    end

    def to_po
      @kvalue * 2.2046
    end

    def to_oz
      @kvalue * 35.274
    end

    def to_ct
      @kvalue * 5000
    end
  end # => Class
end # => Module
