require "test/unit"

#yeah this is just for fun


def encode_num_subs(strn)
  strn = strn.downcase
  alphabets = "abcdefghijklmnopqrstuvwxyz".split("")
  out = {" " => " "}
  alphabets.each do |alphabet|
    out[alphabet] = (alphabets.index(alphabet) + 1).to_s
    
  end
  out_list = []
  strn.split("").each do |el|
    out_list << out[el]
    out_list << "-"
  end
  out_list = out_list[0...out_list.length-1]
  #puts out_list

  out_list.join("")
end

def decode_num_subs(strn)
  alphabets = "abcdefghijklmnopqrstuvwxyz".split("")
  out = {" "=> " "}
  alphabets.each do |alphabet|
    out[(alphabets.index(alphabet) + 1).to_s] = alphabet
    
  end
  out_list = []
  strn.split("-").each do |el|
    out_list << out[el]
  end
  

  out_list.join("")
end






class TestNumSubs < Test::Unit::TestCase
  def test_num_sub_single()    
    assert_equal("1", encode_num_subs("a"))
  end
  
  def test_num_subs_multi()    
    assert_equal("1-2-3-4-5-6-7", encode_num_subs("abcdefg"))
  end
  
  def test_num_subs_complete()
    assert_equal("abcdefg", decode_num_subs(encode_num_subs("abcdefg")))    
  end
  
  def test_encode_spaces()
    assert_equal(" ", encode_num_subs(" "))
  end
  
  def test_decode_spaces()
    assert_equal(" ", decode_num_subs(" "))
  end
  
  def test_has_spaces()
    assert_equal("hello world", decode_num_subs(encode_num_subs("hello world")))
  end
  
  
  def test_num_subs_full()
    quick_fox = "The Quick Brown fox jumps over the lazy dog"
    assert_equal(quick_fox.downcase, decode_num_subs(encode_num_subs(quick_fox)))
  end
  
    
end  
