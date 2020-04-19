require_relative 'key'
require_relative 'offset'

class Shift

  def initialize(date, key)
    @date_hash = Offset.new(date)
    @key_hash = Key.new(key)
  end


  def total_offset
  @date_hash.date_formatter.merge!(@key_hash.number_formatter) { |key, date_values, number_values| date_values + number_values }
  end
end
