require_relative 'test_helper'

class OffsetTest < Minitest::Test
  def setup
    @offset = Offset.new
  end

  def test_it_exists
    assert_instance_of Offset, @offset
  end

  def test_current_date_argument
    Date.stubs(:today).returns(Date.new(2020, 04, 18))
    assert_equal "180420", @offset.date_set
  end

  def test_can_return_last_four_of_squared_date
    # need to set up a mock here
    assert_equal 6400, @offset.date_formatter
  end
end
