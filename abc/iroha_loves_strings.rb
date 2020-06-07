n, l = gets.split(" ").map(&:to_i)

s = []
(1..n).each do
  s.push(gets.chomp)
end

p s.sort.join