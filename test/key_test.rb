require_relative 'test_helper'

class KeyTest < Minitest::Test
  def setup
    @key = Key.new("12345")
  end

  def test_it_exists
    assert_instance_of Key, @key
  end

  def test_it_has_attributes
    assert_equal "12345", @key.key
  end

  def test_it_retrieves_key
    @key.stubs(:rand).returns("5832")
    assert_equal "05832", @key.number_generator
  end

  def test_it_can_return_hash_of_number_keys

    expected = {:A=>12, :B=>23, :C=>34, :D=>45}
    assert_equal expected, @key.number_formatter
  end
end
