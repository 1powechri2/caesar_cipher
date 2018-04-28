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

 def test_shifting_uppercase
   @cipher_shift_3.fill_message_array('PiZzA')
   assert @messages.include? 67
 end
end
