n = gets.to_i

ary = []
(1..n).each do |i|
  x, y = gets.split(" ").map(&:to_i)
  ary.push([x, y])
end

ret = 0
(0..ary.size-1).each do |i|
  (0..ary.size-1).each do |j|
    x1, y1 = ary[i]
    x2, y2 = ary[j]
    size = Math.sqrt((x2 - x1)**2 + (y2 - y1)**2)
    ret = size if ret < size
  end
end

puts sprintf("%.6f", ret)