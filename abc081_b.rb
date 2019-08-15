n = gets.to_i
array = gets.split.map(&:to_i)
cnt = 0

while array.all?(&:even?) do
  cnt += 1
  array = array.map{|n| n / 2}
end

puts cnt

