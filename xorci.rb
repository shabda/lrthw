require "test/unit"

def get_xor_key(key)
  start = 0
  key.split("").each do |alphabet|
    start = start ^ alphabet.ord
  end
  return start
end

def get_xor_cipher(plain, key)
  plain.upcase!
  plain_stream = plain.split("")
  out = []
  key = get_xor_key(key)
  plain_stream.each do |alphabet|
    out << (alphabet.ord ^ key)
  end
  out.map! {|el| el.chr}
  out.join ""
end



class TestXor < Test::Unit::TestCase
  def test_key_gen
    assert_equal(65, get_xor_key("A"))
    assert_equal(3, get_xor_key("AB"))
    assert_equal(64, get_xor_key("ABC"))
  end
  
  def test_cipher_change
    input ="Hello"
    key = "say friend"
    assert_not_equal(input, get_xor_cipher(input, key))
  end
  
  def test_cipher
    input ="Hello"
    key = "say friend"
    assert_equal(input, get_xor_cipher(get_xor_cipher(input, key), key))
  end
end