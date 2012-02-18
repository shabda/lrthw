require "test/unit"

module Enumerable
  def dups
    inject({}) {|h,v| h[v]=h[v].to_i+1; h}.reject{|k,v| v==1}.keys
  end
end

def playfair_keystream(key)
  key.upcase!
  key.gsub!("J", "I")
  alphabets = "abcdefghiklmnopqrstuvwxyz".upcase.split("")
  keys = key.upcase.split("")
  keystream = []
  keys.each do |alphabet|
    if not keystream.include? alphabet
      keystream << alphabet
    end
  end
  alphabets.each do |alphabet|
    if not keystream.include? alphabet
      keystream << alphabet
    end
  end
  keystream_ar = []
  pf_size = 5
  pf_size.times do |i|
    keystream_ar << keystream[i*5...(i+1)*5]
  end
  keystream_ar
    
  
end




class TestPlayFair < Test::Unit::TestCase
  def test_playfair_keystream_empty
    key = "A"
    out_stream = [
        %w(A B C D E),
        %w(F G H I K),
        %w(L M N O P),
        %w(Q R S T U),
        %w(V W X Y Z),
      ]
    assert_equal(out_stream, playfair_keystream(key))
    
  end
  
  def test_playfair_keystream_j
    key = "J"
    out_stream = [
        %w(I A B C D),
        %w(E F G H K),
        %w(L M N O P),
        %w(Q R S T U),
        %w(V W X Y Z),
      ]
    assert_equal(out_stream, playfair_keystream(key))
  end
  
  
  def test_playfair_keystream
    key = "PLAYFAIREXAMPLE"
    out_stream = [%w(P L A Y F),
              %w(I R E X M),
              %w(B C D G H),
              %w(K N O Q S),
              %w(T U V W Z),
            ]
    assert_equal(out_stream, playfair_keystream(key))
  end
end