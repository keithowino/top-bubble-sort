# ! Not added to Git Hub...

def bubble_sort(arr, sorted = :Enter_numbers_on_next_attempt)
  # * The program will finally return a sorted array when the condition bellow is met.
  return sorted if arr.size < 1
  # * Here we creat the sorting array if it has no elements.
  if sorted == :Enter_numbers_on_next_attempt
    sorted = []
  end
  comes_first = arr.min
  sorted << comes_first

  # * Here we want to find the index of the first uniq number in the sense thaat there could be a similar number in the array.
  delete_index = arr.index {|v| v == comes_first}

  # * Then we delete the iniial appearance of this specific value.
  arr.delete_at(delete_index)

  # * We call the method again.
  bubble_sort(arr, sorted)
end

puts "\n"
p "BUBBLE SORT"
puts "\n"
p "Enter a random numbers separated by a space, for the bot to sort out: "
puts "\n"
input = gets.chomp.split.map {|v| v.to_i}
puts "\n"

p bubble_sort(input)




# # * A #sort solution

# def bubble_sort(fix)
#   return fix.sort.map {|v| v.to_i}
# end
# puts "\n"
# p "Enter a random number of numbers separated by a space for the bot to sort out: "
# puts "\n"
# bubbles = gets.chomp.split
# puts "\n"
# p bubble_sort(bubbles)