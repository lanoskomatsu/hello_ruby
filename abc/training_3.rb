n = gets.to_i
a = gets.split(" ").map(&:to_i)

cnt = 0
loop do
  if a.map{|i| i % 2 == 0}.uniq.size == 1
    cnt += 1   
    a = a.map{|i| i / 2}
  else
    break
  end
end

puts cnt