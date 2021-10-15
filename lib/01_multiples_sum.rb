
final_number = 0
iterator = 0

def is_multiple_of_3_or_5?(current_number)
  case current_number%5 == 0 || current_number%3 == 0
  when true
    true
  when false
    false
  end
end



def sum_of_3_or_5_multiples?(final_number, iterator)
  iterator.times do |i|
    is_multiple_of_3_or_5?(i) ? final_number = final_number + i : i
  end
  return final_number
end

puts sum_of_3_or_5_multiples?(final_number, iterator)
