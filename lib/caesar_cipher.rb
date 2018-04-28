class CaesarCipher

  attr_reader :shift,
              :message

  def initialize(shift = 0)
    @shift   = shift
    @message = nil 
  end

  def fill_message_array(arg)
    @message = arg.chars
  end
end
