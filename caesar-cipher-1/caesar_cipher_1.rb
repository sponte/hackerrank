# https://www.hackerrank.com/challenges/caesar-cipher-1
class CeasarCipher1
  attr_accessor :encryption_key

  @@ranges = [
      (97..122).to_a,
      (65..90).to_a
  ]

  # a = 97 - z = 122
  # A = 65 - z = 90

  def encrypt(string)
    encrypted = ''
    string.each_byte do |byte|
      found_in_range = false
      @@ranges.each do |range|
        if range.include?(byte)
          encrypted += encrypt_character_in_range(byte, range)
          found_in_range = true
        end
      end

      next if found_in_range
      encrypted += byte.chr
    end

    encrypted
  end

  def encrypt_character_in_range(byte, range)
    encryption_key_for_range = encryption_key
    if encryption_key > range.size
      encryption_key_for_range = encryption_key % range.size
    end

    if byte + encryption_key_for_range > range.max
      how_many_over = (byte + encryption_key_for_range) % range.max
      return (range.min + how_many_over - 1).chr
    end

    (byte + encryption_key_for_range).chr
  end
end