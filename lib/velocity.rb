require_relative 'weight/version'

# => Temperature Gem
module Velocity
  def self.say
    'Velocity module'
  end

  # => Class temperature
  class Velocity
    def initialize(value, type)
      load_constants

      @original_value = value.to_f

      @msvalue = @constants_to_ms[type] * @original_value
    end # => Method initialize

    def load_constants
      @constants_to_ms = Hash.new 'constants'
      @constants_to_ms = {
        'ms' => 1,
        'kh' => 0.277778,
        'mph' => 0.44704,
        'knot' => 0.514444,
        'fts' => 0.3048
      }
    end

    def to_ms
      (@msvalue / @constants_to_ms['ms']).round(2)
    end

    def to_kh
      (@msvalue / @constants_to_ms['kh']).round(2)
    end

    def to_mph
      (@msvalue / @constants_to_ms['mph']).round(2)
    end

    def to_knot
      (@msvalue / @constants_to_ms['knot']).round(2)
    end

    def to_fts
      (@msvalue / @constants_to_ms['fts']).round(2)
    end
  end # => Class
end # => Module
