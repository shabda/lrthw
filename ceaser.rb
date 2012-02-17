require "test/unit"

#yeah this is just for fun


def encode_ceaser(strn, shift_by)
  shift_by = shift_by % 26
  strn = strn.downcase
  alphabets = "abcdefghijklmnopqrstuvwxyz".split("")
  shifted = alphabets[shift_by..alphabets.length]+alphabets[0..shift_by-1]
  code = {" " => " "}
  index = 0
  alphabets.each do |alphabet|
    code[alphabet] = shifted[index]
    index+=1
  end
  out = []
  strn.split("").each do |el|
    out << code[el]
  end
  return out.join("")
end

def decode_ceaser(strn, shift_by)
  shift_by = shift_by % 26
  alphabets = "abcdefghijklmnopqrstuvwxyz".split("")
  shifted = alphabets[shift_by..alphabets.length]+alphabets[0..shift_by-1]
  code = {" " => " "}
  index = 0
  out = []
  shifted.each do |alphabet|
    code[alphabet] = alphabets[index]
    index+=1
  end  
  strn.split("").each do |el|
    out << code[el]
  end
  return out.join("")
end

class TestCeaser < Test::Unit::TestCase
  def test_ceaser_single()
    assert_equal("b", encode_ceaser("a", 1))
    assert_equal("j", encode_ceaser("i", 1))
    assert_equal("z", encode_ceaser("a", 25))
    assert_equal("b", encode_ceaser("a", 27))
  end
  
  def test_ceaser_multi()
    assert_equal("bcd", encode_ceaser("abc", 1))
  end
  
  def test_ceaser_decode()
    assert_equal("abc", decode_ceaser(encode_ceaser("abc", 1), 1))
  end
  
  def test_ceaser_decode_full()
    input = "the quick brown fox jumps over the lazy dog"
    assert_equal(input, decode_ceaser(encode_ceaser(input, 1), 1))
  end
  
  def test_length()
    input = "the quick brown fox jumps over the lazy dog"
    assert_equal(input.length, encode_ceaser(input, 5).length)
    assert_equal(input.length, decode_ceaser(input, 5).length)
  end
  
  def test_case()
    input = "The quick BRRRrown fooYTx jumps over the lazy dog"
    assert_equal(input.downcase, decode_ceaser(encode_ceaser(input, 5), 5))
  end
  
  
  
end
    
    
    
    
    
    
