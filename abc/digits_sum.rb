n = gets.to_i

ans = []
(1..n-1).each do |i|
  a = i
  b = n - i
  if n == a + b
    x = a.to_s.split("").map(&:to_i).sum + b.to_s.split("").map(&:to_i).sum
    ans.push(x)
  end
end

p ans.min