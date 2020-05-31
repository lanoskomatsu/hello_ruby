a, b = gets.split(" ").map(&:to_i)

ans = []
(a..b).each do |i|
  ans.push(i) if i.to_s == i.to_s.reverse
end

p ans.count