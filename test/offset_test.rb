require_relative 'test_helper'

class OffsetTest < Minitest::Test
  def setup
    @offset = Offset.new
  end

  def test_it_exists
    assert_instance_of Offset, @offset
  end

  def test_character_set_returns_characters
    expected = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm',
  'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', ' ']
    assert_equal expected, @offset.character_set


  end

  def test_current_date_argument
    Date.stubs(:today).returns(Date.new(2020, 04, 18))
    assert_equal "180420", @offset.date_set
  end

  def test_can_return_last_four_of_squared_date
    assert_equal ["6", "4", "0", "0"], @offset.date_last_four
  end

  def test_it_can_return_hash_of_date_number_keys
    expected = {:A=>6, :B=>4, :C=>0, :D=>0}
    assert_equal expected, @offset.date_formatter
  end

end
