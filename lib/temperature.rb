require_relative 'temperature/version'

# => Temperature Gem
module Temperature
  def self.say
    'Temperature Gem'
  end

  # => Class temperature
  class Temperature
    def initialize(value, type)
      @value = value
      @type = type
    end

    def to_fahrenheit
      case @type
      when 'celsius'
        (@value * (9 / 5.0) + 32).round(2)
      when 'kelvin'
        (@value * 9.0 / 5 - 459.67).round(2)
      when 'fahrenheit'
        @value.round(2)
      else
        false
      end
    end

    def to_kelvin
      case @type
      when 'celsius'
        (@value + 273.15).round(2)
      when 'kelvin'
        @value.round(2)
      when 'fahrenheit'
        ((@value + 459.67) * 5 / 9.0).round(2)
      else
        false
      end
    end

    def to_celsius
      case @type
      when 'celsius'
        @value.round(2)
      when 'kelvin'
        (@value - 273.15).round(2)
      when 'fahrenheit'
        ((@value - 32) * 5.0 / 9).round(2)
      else
        false
      end
    end
  end
end
