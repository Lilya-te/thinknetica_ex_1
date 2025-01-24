# Площадь треугольника.
# Площадь треугольника можно вычислить, зная его основание (a) и высоту (h) по формуле: 1/2*a*h.
# Программа должна запрашивать основание и высоту треугольника и возвращать его площадь.

puts 'What is triangle base length?'
base = gets.chomp.to_i

puts 'What is triangle height?'
height = gets.chomp.to_i

if base <= 0 || height <= 0
  puts "It is impossible triangle parameters!"
else
  puts "This triangle area is #{0.5 * base * height}!"
end
