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

if d < 0
  puts 'There is no root'
elsif d == 0
  puts "x1 = x2 =#{-b / (2 * a)}"
else
  if Math.sqrt(d).to_i ** 2 == d
    x1 = (-b + Math.sqrt(d)) / (2 * a).to_i
    x2 = (-b - Math.sqrt(d)) / (2 * a).to_i
  else
    x1 = "(#{-b if b != 0}+sqrt(#{d}))/#{2 * a}"
    x2 = "(#{-b if b != 0}-sqrt(#{d}))/#{2 * a}"
  end

  puts "x1 = #{x1}\nx2 = #{x2}"
end


