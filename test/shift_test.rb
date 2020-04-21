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

  def test_it_can_return_hash_of_the_shifter
    expected = {:A=>18, :B=>27, :C=>34, :D=>45}
    assert_equal expected, @shift.shifter
  end

  # def test_can_convert_character_set_to_numbers
  #   skip
  #   expected = {"a"=>0,"b"=>1,"c"=>2,"d"=>3,"e"=>4,"f"=>5,"g"=>6,"h"=>7,"i"=>8,
  #   "j"=>9,"k"=>10,"l"=>11,"m"=>12,"n"=>13,"o"=>14,"p"=>15,"q"=>16,"r"=>17,
  #   "s"=>18,"t"=>19,"u"=>20,"v"=>21,"w"=>22,"x"=>23,"y"=>24, "z"=>25, " "=>26}
  #   assert_equal expected, @shift.characters_to_numbers
  # end

  def test_it_can_split_message
    assert_equal ["h", "e", "l", "l", "o"], @shift.split_message("hello")
  end

  def test_message_index
    assert_equal [7, 4, 11, 11, 14, 26], @shift.message_index("hello ")
  end

  def test_it_can_generate_total_shift
    expected = {:A=>-18, :B=>-27, :C=>-34, :D=>-45}
    assert_equal expected, @shift.generate_total_shift(-1)
    expected2 = {:A=>18, :B=>27, :C=>34, :D=>45}
    assert_equal expected2, @shift.generate_total_shift(1)
  end

  def test_it_can_shift_the_charset
    skip
    shifts = {a: 3, b: 27, c: 73, d: 20}
    expected = ['t', 'u', 'v', 'w', 'x', 'y', 'z', ' ', 'a', 'b', 'c', 'd',
      'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's']

    assert_equal expected, @shift.shift_charset(14, shifts)
  end

end
