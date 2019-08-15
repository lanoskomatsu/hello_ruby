s = gets.to_i

x = s.to_s.split("")

cnt = 0
x.each{|a|
  cnt += 1 if a == "1"
}

puts cnt

