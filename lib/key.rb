require_relative 'modules/initializer'

class Key
  include Initializer
  attr_reader :key

  def initialize(key = number_generator)
   @key = key
  end
end
