class CaesarCipher

#a-z range [97..122]
#A-Z range [65..90]

  def encrypt(string, shift)
    if string == ""
      ""
    else
      string_chars = string.chars
      string_chars.map { |char| encrypt_char(char, shift) }.join
    end
  end

  def encrypt_char(char, shift)
    ascii_code = char.ord
    shifted_ascii_code = ascii_code + shift
      if (97..122).include?(ascii_code)
      if shifted_ascii_code > 122
          remainder = shifted_ascii_code % 122
          shifted_ascii_code = 96 + remainder
        end
        shifted_ascii_code.chr
      end
  end

end
