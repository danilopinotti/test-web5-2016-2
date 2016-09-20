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

      @kvalue = @constants_to_kg[type] * @original_value
    end # => Method initialize

    def load_constants
      @constants_to_kg = Hash.new 'constants'
      @constants_to_kg = {
        'kg' => 1,
        'g' => 1 / 1000,
        'ton' => 1000,
        'po' => 1 / 2.2046,
        'oz' => 1 / 35.274,
        'ct' => 1 / 5000
      }
    end

    def to_g
      (@kvalue / @constants_to_kg['g']).round(2)
    end

    def to_kg
      (@kvalue / @constants_to_kg['kg']).round(2)
    end

    def to_ton
      (@kvalue / @constants_to_kg['ton']).round(2)
    end

    def to_po
      (@kvalue / @constants_to_kg['po']).round(2)
    end

    def to_oz
      (@kvalue / @constants_to_kg['oz']).round(2)
    end

    def to_ct
      (@kvalue / @constants_to_kg['ct']).round(2)
    end
  end # => Class
end # => Module
