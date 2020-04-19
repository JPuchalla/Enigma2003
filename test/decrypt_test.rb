require_relative 'test_helper'

class DecryptTest < Minitest::Test
  def setup
    @decrypt = Decrypt.new
  end

  def test_it_exists
    assert_instance_of Decrypt, @decrypt
  end
end
