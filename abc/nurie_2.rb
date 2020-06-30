w, h, n = gets.split(" ").map(&:to_i)
min_x = 0
min_y = 0
max_x = w
max_y = h

n.times do
  x, y, a = gets.split(" ").map(&:to_i)
  case a
  when 1
    min_x = x if min_x < x
  when 2
    max_x = x if max_x > x
  when 3
    min_y = y if min_y < y
  when 4
    max_y = y if max_y > y
  end
end

ans = (max_x - min_x) * (max_y - min_y)
ans = 0 if max_x <= min_x || max_y <= min_y

p ans