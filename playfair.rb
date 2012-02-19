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

def as_pairs(plaintext)
  if not plaintext.length % 2 ==0
    plaintext << "x"
  end
  dups_at = []
  plaintext.length.times do |i|
    if not i == 0 and plaintext[i] == plaintext[i-1]
      dups_at << i
    end
  end
  dups_at.each do |el|
    puts "XXXX", el, plaintext[el]
  end
  plaintext.upcase!
  plaintext.gsub!(" ", "")
  out = []
  (plaintext.length/2).times do |i|
    out << plaintext[i*2...(i+1)*2]
  end
  out
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
  
  def test_pairs
    input = "HELLO WORLD"
    output = %w(HE LL OW OR LD)
    assert_equal(output, as_pairs(input))
    input = "GOD" #Odd
    output = %w(GO DX)
    assert_equal(output, as_pairs(input))
    input = "Hide the gold in the tree stump"
    output = %w(HI DE TH EG OL DI NT HE TR EX ES TU MP)
    assert_equal(output, as_pairs(input))
    input = "Thee issa"
    output = %w(THE EX IS SX AX)
    assert_equal(output, as_pairs(input))
    
  end
  
  
  
end