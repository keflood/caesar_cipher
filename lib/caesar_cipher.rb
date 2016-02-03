class CaesarCipher

#a-z range [97..122]
#A-Z range [65..90]
#symbols range [0..64] or [91..96] or [123..127]

  def encrypt(string, shift)
    if string == ""
      ""
    else
      string_chars = string.chars
      string_chars.map { |char| encrypt_char(char, shift) }.join
    end
  end

  def decrypt(string, shift)
    if string == ""
      ""

    else
      string_characters = string.chars
      string_characters.map { |char| decrypt_char(char, shift)}.join
end
end

  def encrypt_char(char, shift)
    ascii_code = char.ord

    if letter?(ascii_code)
        shifted_ascii_code = ascii_code + shift

      if shift > 26
        remains = shift % 26
        shifted_ascii_code = ascii_code + remains
      end

      if out_of_range?(ascii_code, shifted_ascii_code)
        remainder = shifted_ascii_code % (end_of_range(ascii_code) + 1)
        shifted_ascii_code = start_of_range(ascii_code) + remainder
      end

      else
        shifted_ascii_code = ascii_code

      end
          shifted_ascii_code.chr
    end

    def decrypt_char(char, shift)
      ascii_code = char.ord

      if letter?(ascii_code)
          shifted_ascii_code = ascii_code - shift

        if shift > 26
          remains = shift % 26
          shifted_ascii_code = ascii_code - remains
        end

        if out_of_range_decrypt?(ascii_code, shifted_ascii_code)
          remainder = (start_of_range(ascii_code) - 1) % shifted_ascii_code
          shifted_ascii_code = end_of_range(ascii_code) - remainder
        end

          shifted_ascii_code.chr

        end
      end

private

  def letter?(ascii_code)
    lowercase?(ascii_code) || uppercase?(ascii_code)
  end

  def out_of_range?(ascii_code, shifted_ascii_code)

    letter?(ascii_code) && shifted_ascii_code > end_of_range(ascii_code)

    end

    def out_of_range_decrypt?(ascii_code, shifted_ascii_code)

      letter?(ascii_code) && shifted_ascii_code < start_of_range(ascii_code)

      end

def start_of_range(ascii_code)
  if lowercase?(ascii_code)
    97
  else
    65
  end
end

def end_of_range(ascii_code)
  if lowercase?(ascii_code)
    122
  else
    90
  end
end

def lowercase?(ascii_code)
  (97..122).include?(ascii_code)
end

def uppercase?(ascii_code)
  (65..90).include?(ascii_code)
end


end
