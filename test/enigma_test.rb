require_relative 'test_helper'

class EnigmaTest < Minitest::Test
  def setup
    @enigma = Enigma.new
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

#   def test_it_can_encrypt
# skip
#    expected = {encryption: 'keder ohulw!',
#                key: '02715',
#                date: '040895'}
#
#    assert_equal expected, @enigma.encrypt('Hello World!', '02715', '040895')
#
#   end

end
