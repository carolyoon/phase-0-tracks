first_name = "Caroline"
last_name = "Yoon"
reverse_name = last_name + " " + first_name
# puts reverse_name 

new_name = reverse_name.split("")
# puts new_name

new_name.map! { |letter| letter.next }
# puts new_name

puts new_name.join("").split(' ')