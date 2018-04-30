require './lib/caesar_cipher'

@cipher      = CaesarCipher.new(5)

message      = File.open(ARGV[0])
plaintext    = File.read(message)

@cipher.fill_message_array(plaintext)

encryption = @cipher.back_to_chars

File.write(ARGV[1], encryption)

p 'Your message is encrypted.'
