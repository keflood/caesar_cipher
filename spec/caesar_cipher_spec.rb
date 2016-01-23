require 'spec_helper'
require 'caesar_cipher'

describe CaesarCipher do
  let(:caesar_cipher) {CaesarCipher.new}

  it "can encrypt an empty string" do
    expect(caesar_cipher.encrypt("", 0)).to eq ""
  end

  it "doesn't alter a character with a shift of 0" do
    expect(caesar_cipher.encrypt("a", 0)).to eq "a"
  end

  it "can shift a character with a shift of 1" do
    expect(caesar_cipher.encrypt("a", 1)).to eq "b"
  end

  it "can shift a character with a shift of 2" do
    expect(caesar_cipher.encrypt("a", 2)).to eq "c"
  end

  it "can shift two characters with a shift of 1" do
    expect(caesar_cipher.encrypt("ab", 1)).to eq "bc"
  end

  it "can shift multiple characters with a shift of 2" do
    expect(caesar_cipher.encrypt("abc", 2)).to eq "cde"
  end

  it "encrypts 'z' with a shift factor of 1 to be 'a'" do
    expect(caesar_cipher.encrypt("z", 1)).to eq "a"
  end

  context "encrypts 'z' as upper case or lower case" do
  it "encrypts 'z' with a shift factor of 2 to be 'b'" do
    expect(caesar_cipher.encrypt("z", 2)).to eq "b"
  end
  it "encrypts 'Z' with a shift factor of 2 to be 'B'" do
    expect(caesar_cipher.encrypt("Z", 2)).to eq "B"
  end
end

  it "encrypts 'A' with a shift of 1" do
    expect(caesar_cipher.encrypt("A", 1)).to eq "B"
  end

  context "can take a shift great than 26" do
  it "can return a shifted lowercase character" do
    expect(caesar_cipher.encrypt("a", 27)).to eq "b"
  end
  it "can return a shifted uppercase character" do
    expect(caesar_cipher.encrypt("A", 27)).to eq "B"
  end
  end

  #it "can return a symbol without shifting" do
    #expect(caesar_cipher.encrypt("&", 1)).to eq "&"
  #end
end
