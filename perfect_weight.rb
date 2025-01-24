# Идеальный вес.
# Программа запрашивает у пользователя имя и рост и выводит идеальный вес по формуле (<рост> - 110) * 1.15,
# после чего выводит результат пользователю на экран с обращением по имени.
# Если идеальный вес получается отрицательным, то выводится строка "Ваш вес уже оптимальный"
puts 'What is your name?'
name = gets.chomp

puts 'What is your height?'
height = gets.chomp.to_i

perfect_weight = (height - 110) * 1.15

if perfect_weight < 0
  puts "#{name}, your weight is already perfect!"
else
  puts "#{name}, your perfect weight is #{perfect_weight}!"
end
