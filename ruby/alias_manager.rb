

#Swap the first and last name
#Change all the vowels/consonants to the next vowel/consonant (OR just the next letter)
#Provide a user interface that lets a user enter a name and get a fake name back. Let user repeat until they type "quit". Might hit "Enter " to continue
#Store fake names in a data structure. When user exits the program, iterate through the data structure and print all the data that the user entered.

def name_scrambler 
  while gets.chomp != 'quit'
    puts "Enter your first name: "
    first_name = gets.chomp.downcase
    puts "Enter your last name: "
    last_name = gets.chomp.downcase
  
    new_first_name = next_letter(first_name)
    new_last_name = next_letter(last_name)
    fake_name = new_last_name.capitalize + " " + new_first_name.capitalize
    puts "This is your new name: #{fake_name}." 
  
    new_names = {}
    new_names["#{first_name} #{last_name}"] = fake_name 
    puts new_names 
  end
end 

def next_letter(name)
 split_words = name.split("").map! do |letter|
  letter.next 
end
 
 split_words.join("")
end

name_scrambler 

puts new_names 