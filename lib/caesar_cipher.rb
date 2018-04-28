class CaesarCipher

  attr_reader :shift,
              :message

  def initialize(shift = 0)
    @shift   = shift
    @message = nil
  end

  def fill_message_array(arg)
    @message = arg.chars
    to_ord(@message)
  end

  def to_ord(arg)
    @message = arg.map do |letter|
      if letter.upcase
        shift_upcase(letter)
      elsif letter.downcase
        shift_downcase(letter)
      end
    end
  end

  def shift_upcase(arg)
    if arg < blob
  end
end
