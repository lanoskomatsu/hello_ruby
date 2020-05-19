n = gets.to_i

x = 0
(0..n-1).each do |i|
  p "#{i}: #{2 ** i > n}"
  break if 2 ** i > n
  x = 2 ** i
end

puts x
