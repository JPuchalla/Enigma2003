require_relative 'test_helper'

class KeyTest < Minitest::Test
  def setup
    @key = Key.new
  end

  def test_it_exists
    assert_instance_of Key, @key
  end

  def test_it_retrieves_key
    skip
    #need to set up a mock here
    assert_equal 5, @key.key.length
    assert_equal "12345", @key.key
  end
end
