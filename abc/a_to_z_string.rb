s = gets.chomp.split("")

count_flag = false
res = []
s.each do |chr|
  count_flag = true if chr == "A"  
  res.push(chr) if count_flag
  count_flag = false if chr == "Z"
end

p "---"
p res.size