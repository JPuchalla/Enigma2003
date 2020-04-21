require_relative 'shift'
require_relative 'modules/initializer'

class Enigma
  include Initializer

  # def encrypt(message, key = number_generator, date = date_set)
  #   shifts = Shift.new(key, date)
  #
  #   {
  #     encryption: shifts.change_string(message.downcase, shifts),
  #     key: key,
  #     date: date
  #   }
  # end

end
