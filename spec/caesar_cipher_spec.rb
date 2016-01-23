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

  it "encrypts 'z' with a shift factor of 2 to be 'b'" do
    expect(caesar_cipher.encrypt("z", 2)).to eq "b"
  end

  it "encrypts 'A' with a shift of 1" do
    expect(caesar_cipher.encrypt("A", 1)).to eq "B"
  end


end
