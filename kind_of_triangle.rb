# Прямоугольный треугольник.
# Программа запрашивает у пользователя 3 стороны треугольника и определяет,
# является ли треугольник прямоугольным (используя теорему Пифагора www-formula.ru),
# равнобедренным (т.е. у него равны любые 2 стороны)
# или равносторонним (все 3 стороны равны)
# и выводит результат на экран.
# Подсказка: чтобы воспользоваться теоремой Пифагора,
# нужно сначала найти самую длинную сторону (гипотенуза)
# и сравнить ее значение в квадрате с суммой квадратов двух остальных сторон.
#
# Если все 3 стороны равны, то треугольник равнобедренный и равносторонний, но не прямоугольный.

puts "The first triangle side:"
a = gets.chomp.to_i

puts "The second triangle side:"
b = gets.chomp.to_i

puts "The third triangle side:"
c = gets.chomp.to_i

if a <= 0 || b <= 0 || c <= 0 || a >= b + c || b >= a + c || c >= a + b
  puts "This is impossible to build triangle with sides: #{a}, #{b}, #{c}"
else
  if a == b && b == c
    result_sides = ' equilateral'
  elsif a == b || a == c || b == c
    result_sides = ' isosceles'
  end

  hypotenuse = [a, b, c].max
  cathetus_1 = [a, b, c].min
  cathetus_2 = a + b + c - hypotenuse - cathetus_1

  if hypotenuse ** 2 == cathetus_1 ** 2 + cathetus_2 ** 2
    result_right = ' right'
  end

  if result_right.nil? && result_sides.nil?
    result = ' scalene'
  else
    result = result_right.to_s + result_sides.to_s
  end
  puts "This triangle is#{result}"
end
