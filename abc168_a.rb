x = gets.to_s.chomp("\n")
p num = x[-1].to_i
case num
when 2, 4, 5, 7, 9
    puts "hon"
when 0, 1, 6, 8
    puts "pon"
when 3
    puts "bon"
end