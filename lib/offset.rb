require_relative 'modules/initializer'

class Offset
  include Initializer

  def initialize(date= date_set)
   @date = date.to_i
  end

  def date_last_four
    date_four = (@date * @date).to_s[- 4 ,4]
    date_four.chars
  end

  def date_formatter
    date_keys = Hash.new
    date_keys[:A] = date_last_four[0].to_i
    date_keys[:B] = date_last_four[1].to_i
    date_keys[:C] = date_last_four[2].to_i
    date_keys[:D] = date_last_four[3].to_i
    date_keys
  end

  

end
