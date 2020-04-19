require_relative 'test_helper'


class ShiftTest < Minitest::Test
  def setup
    @key = ("12345")
    @date = ("190420")
    @shift = Shift.new(@date, @key)
  end

  def test_it_exists
    assert_instance_of Shift, @shift
  end

  def test_it_can_return_hash_of_total_offset
    expected = {:A=>18, :B=>27, :C=>34, :D=>45}
    assert_equal expected, @shift.total_offset
  end

  def test_if_it_can_shift
  end
end
