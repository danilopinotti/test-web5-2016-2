require_relative 'weight/version'

# => Temperature Gem
module Weight
  def self.say
    'Weight'
  end

  # => Class temperature
  class Weight
    def initialize(value, type)
      @value = value
      @type = type
    end
    
  end
end
