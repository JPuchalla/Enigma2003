require_relative 'key'
require_relative 'offset'
require_relative 'modules/initializer'

class Shift
  include Initializer

  def initialize(date, key)
    @date_hash = Offset.new(date)
    @key_hash = Key.new(key)
  end

  def shifter
    @date_hash.date_formatter.merge(@key_hash.number_formatter) { |key, date_values, number_values| date_values + number_values }
  end
  #
  # def characters_to_numbers
  #   Hash[character_set.zip((0..26).to_a)]
  # end

  def split_message(message)
    message.chars
  end

  def message_index(message)
    split_message(message).map { |letter| character_set.index(letter) }
  end


end
