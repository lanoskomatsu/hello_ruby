s = gets.chomp.split("")
res = ""
s.each_with_index do |chr, i|
  res += chr if i % 2 == 0
end
p res