require 'minitest/autorun'
require 'minitest/pride'
require './lib/caesar_cipher'
require 'pry'

class CaesarCipherTest < Minitest::Test

 def setup
  @cipher = CaesarCipher.new
  @cipher_shift_3 = CaesarCipher.new(3)
 end

 def test_cipher_exists
   assert_instance_of CaesarCipher, @cipher
 end

 def test_cipher_initiates_with_shift
    assert_equal 0, @cipher.shift
    assert_equal 3, @cipher_shift_3.shift
 end

 def test_message_array_initiates_nil
   assert @cipher.message.nil?
 end

 def test_fill_message_array
   @cipher.fill_message_array('PiZzA')
   assert_equal 5, @cipher.message.length
 end

 def test_letters_to_ordinal_integers
   @cipher.fill_message_array('PiZzA')
   assert_equal [80, 105, 90, 122, 65], @cipher.message
 end

 def test_uppercase_shift
   z_upcase_ord = @cipher_shift_3.shift_upcase(90)
   assert_equal 67, z_upcase_ord
 end

 def test_downcase_shift
   z_downcase_ord = @cipher_shift_3.shift_downcase(122)
   assert_equal 99, z_downcase_ord
 end

 def test_shift_ord
   @cipher_shift_3.fill_message_array('PiZzA')
   actual   = @cipher_shift_3.message_shift
   expected = [83, 108, 67, 99, 68]
   assert_equal expected, actual 
 end
end
