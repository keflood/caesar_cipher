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

  context "encrypts a single character" do
  it "using a shift of 1" do
    expect(caesar_cipher.encrypt("a", 1)).to eq "b"
  end
  it "using a shift of 2" do
    expect(caesar_cipher.encrypt("a", 2)).to eq "c"
  end
end

  it "can shift two characters with a shift of 1" do
    expect(caesar_cipher.encrypt("ab", 1)).to eq "bc"
  end

  it "can shift multiple characters with a shift of 2" do
    expect(caesar_cipher.encrypt("abc", 2)).to eq "cde"
  end

  context "encrypts loops from 'z' to 'a' regardless of case" do
   it "encrypts 'z' with a shift factor of 1 to be 'a'" do
    expect(caesar_cipher.encrypt("z", 1)).to eq "a"
  end
  it "encrypts 'z' with a shift factor of 2 to be 'b'" do
    expect(caesar_cipher.encrypt("z", 2)).to eq "b"
  end
  it "encrypts 'Z' with a shift factor of 2 to be 'B'" do
    expect(caesar_cipher.encrypt("Z", 2)).to eq "B"
  end
  it "encrypts 'xyz' with a shift of 3 to be 'abc'" do
    expect(caesar_cipher.encrypt('xyz', 3)).to eq "abc"
end
end

  it "encrypts 'A' with a shift of 1" do
    expect(caesar_cipher.encrypt("A", 1)).to eq "B"
  end

  context "can take a shift greater than 26" do
  it "can return a shifted lowercase character" do
    expect(caesar_cipher.encrypt("a", 27)).to eq "b"
  end
  it "can return a shifted uppercase character" do
    expect(caesar_cipher.encrypt("A", 27)).to eq "B"
  end
  it "can return multiple characters" do
    expect(caesar_cipher.encrypt("abc", 27)).to eq "bcd"
  end
end

it "can encrypt a mixed case string" do
  expect(caesar_cipher.encrypt("aBcD", 1)).to eq "bCdE"
end

context "can decrypt" do
it "given a character with a shift of 1" do
  expect(caesar_cipher.decrypt("b", 1)).to eq "a"
end
it "can decrypt 'a' and loop to 'z'" do
  expect(caesar_cipher.decrypt("a", 1)).to eq "z"
end
it "can decrypt 'A' and loop to 'Y'" do
  expect(caesar_cipher.decrypt("A", 2)).to eq "Y"
end
it "can take a shift larger than 26" do
  expect(caesar_cipher.decrypt("b", 27)).to eq "a"
end
it "can decrypt multiple characters" do
  expect(caesar_cipher.decrypt("cde", 2)).to eq "abc"
end
#it "decrypts 'abc' with a shift of 3 to be 'xyz'" do
#  expect(caesar_cipher.encrypt("abc", 3)).to eq "xyz"
#end
end



  it "can return a symbol without shifting" do
    expect(caesar_cipher.encrypt("&", 1)).to eq "&"
  end
end
