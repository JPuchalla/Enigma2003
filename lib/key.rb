require_relative 'modules/initializer'

class Key
  include Initializer
  attr_reader :key

  def initialize(key = number_generator)
   @key = key
  end

  def number_formatter
    num_keys = Hash.new
    num_keys[:A] = key[0..1].to_i
    num_keys[:B] = key[1..2].to_i
    num_keys[:C] = key[2..3].to_i
    num_keys[:D] = key[3..4].to_i
    return num_keys
  end

end
