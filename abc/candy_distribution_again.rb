n, x = gets.split(" ").map(&:to_i)
a = gets.split(" ").map(&:to_i).sort

n.times do |i|
  x = x - a[i]
  if x > 0
    next
  else
    if x == 0
      puts i + 1
    elsif x < 0
      puts i
    end
    exit
  end
end
puts x == 0 ? n : n - 1
