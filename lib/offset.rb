require_relative 'modules/initializer'

class Offset
  include Initializer

  def initialize(date= date_set)
   @date = date.to_i
  end

  def date_formatter
    (@date * @date).to_s[- 4 ,4].to_i

    #logic
  end


end
