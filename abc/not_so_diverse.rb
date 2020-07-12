n, k = gets.split(" ").map(&:to_i)
a = gets.split(" ").map(&:to_i)

ary = a.group_by(&:itself).map{|k, v| [k, v.count]}.sort

cnt = 0
ary[k..ary.size]&.each do |i|
  cnt += i[1]
end

p cnt