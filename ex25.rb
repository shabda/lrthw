module Ex25
  def self.break_words(sentence)
    sentence.split(" ")
  end
  def self.sort_words(words)
    words.sort()
  end
end

<<RUN
ruby-1.9.2-p290 :004 > Ex25.break_words("The quick brown fox")
 => ["The", "quick", "brown", "fox"] 
ruby-1.9.2-p290 :005 > Ex25.sort_words(Ex25.break_words("The quick brown fox"))
 => ["The", "brown", "fox", "quick"] 
ruby-1.9.2-p290 :006 > 

RUN