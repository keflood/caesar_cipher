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
    #if ascii_code == (0..64) or (91..96) or (123..127)

    shifted_ascii_code = ascii_code + shift
      if ascii_code === (97..122) or (65..90)

      #  shifted_ascii_code = ascii_code + shift
      #  shifted_ascii_code.chr
      #else shifted_ascii_code = ascii_code + 0
        #shifted_ascii_code.chr

     #if (97..122).include?(ascii_code)

      if shift > 26
        remains = shift % 26
        if (97..122).include?(ascii_code)
        shifted_ascii_code = 97 + remains
      else shifted_ascii_code = 65 + remains
      end
      end

      if shifted_ascii_code > 122
          remainder = shifted_ascii_code % 122
          shifted_ascii_code = 96 + remainder
        end

        shifted_ascii_code.chr
      end
    end

    #def start_value
    #  if (97..122).include?(ascii_code)
    #    start = 97
    #  else
    #    start = 65
    #end
 end
