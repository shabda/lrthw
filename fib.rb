def rec_fib(num)
  if num == 1
    1
  elsif num == 2
    2
  else
    rec_fib(num-1) + rec_fib(num-2)
  end
end



def memo_fib(num)
  memo = {}
  if memo.has_key? num
    memo[num]
  else
    out = rec_fib(num)
    memo[num] = out
    out
  end
end  

(1..10).each do |n|
  puts n, rec_fib(n), memo_fib(n)
end
