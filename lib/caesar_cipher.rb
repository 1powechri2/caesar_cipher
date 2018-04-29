class CaesarCipher

  attr_reader :shift,
              :message,
              :message_shift

  def initialize(shift = 0)
    @shift         = shift
    @message       = nil
    @message_shift = nil
  end

  def fill_message_array(arg)
    @message = arg.chars
    to_ord(@message)
  end

  def to_ord(message)
    @message = message.map {|letter| letter.ord}
    shift_ord(@message)
  end

  def shift_ord(ord_message)
    @message_shift = ord_message.map do |ord_number|
      if ord_number > 64 && ord_number < 91
        shift_upcase(ord_number)
      elsif ord_number > 96 && ord_number < 123
        shift_downcase(ord_number)
      else
        ord_number
      end
    end
  end

  def shift_upcase(ord_number)
    ord_number += @shift
    if ord_number < 65
      ord_number + 26
    elsif ord_number > 90
      ord_number - 26
    else
      ord_number
    end
  end

  def shift_downcase(ord_number)
    ord_number += @shift
    if ord_number < 97
      ord_number + 26
    elsif ord_number > 122
      ord_number - 26
    else
      ord_number
    end
  end

  def back_to_chars
    @message_shift.map {|ord| ord.chr}.join
  end 
end
