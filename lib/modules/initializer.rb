require 'date'

module Initializer

  def character_set
    ("a".."z").to_a << " "
  end

  def number_generator
    rand(00000..99999).to_s.rjust(5, '0')
  end

  def date_set
    Date.today.strftime("%d%m%y")
  end
end

# Square the numeric form (1672401025)
# Take the last four digits (1025)
