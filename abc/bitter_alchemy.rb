n, x = gets.split(" ").map(&:to_i)

m = []
n.times do
  m.push(gets.to_i)
end

p m

m.each do |i|
  p i
end

x = x - m.sum

p "---"
p (x / m.min) + n
