# Квадратное уравнение. Пользователь вводит 3 коэффициента a, b и с. Программа вычисляет дискриминант (D) и корни уравнения (x1 и x2, если они есть) и выводит значения дискриминанта и корней на экран. При этом возможны следующие варианты:
#                                                                                                                                                                                                                                      Если D > 0, то выводим дискриминант и 2 корня
# Если D = 0, то выводим дискриминант и 1 корень (т.к. корни в этом случае равны)
# Если D < 0, то выводим дискриминант и сообщение "Корней нет"
# Подсказка: Алгоритм решения с блок-схемой (www.bolshoyvopros.ru). Для вычисления квадратного корня, нужно использовать
#
# Math.sqrt
#
# Например,
#
# Math.sqrt(16)
#
# вернет 4, т.е. квадратный корень из 16.
puts 'Input coefficient A != 0:'
a = gets.chomp.to_i

puts 'A should be not 0'; return if a == 0

puts 'Input coefficient B:'
b = gets.chomp.to_i

puts 'Input coefficient C:'
c = gets.chomp.to_i

d = b ** 2 - 4 * a * c

puts 'There is no rational root'; return if d < 0

if Math.sqrt(d).to_i ** 2 == d
  x1 = (-b + Math.sqrt(d)) / (2 * a).to_i
  x2 = (-b - Math.sqrt(d)) / (2 * a).to_i if d > 0
else
  x1 = "(#{-b} + sqrt(#{d}))/#{2 * a}"
  x2 = "(#{-b} - sqrt(#{d}))/#{2 * a}" if d > 0
end

puts "x1 = #{x1} #{"x2 = #{x2}" if x2}"


