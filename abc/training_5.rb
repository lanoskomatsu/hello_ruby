n, a, b = gets.split(" ").map(&:to_i)

ary = []
(1..n).each do |i|
  x = i.to_s.split("").map(&:to_i).sum
  ary.push(i) if a <= x && x <= b
end

p ary.sum