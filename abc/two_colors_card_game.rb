n = gets.to_i
pu = n.times.map{gets.chomp.to_s}
m = gets.to_i
ma = m.times.map{gets.chomp.to_s}
 
hash = pu.group_by(&:itself).map{ |key, value| [key, value.count] }.to_h
hash_m = ma.group_by(&:itself).map{ |key, value| [key, value.count*-1] }.to_h
 
sum = hash.merge(hash_m){|k, v1, v2| v1 + v2}
 
if sum.max{ |x, y| x[1] <=> y[1] }[1] > 0
  puts sum.max{ |x, y| x[1] <=> y[1] }[1]
else
  puts 0
end