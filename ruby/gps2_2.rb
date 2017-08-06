# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create a new hash
  # set default quantity to zero 
  # turn string into an array
  #iterate through each item in the array to be included as keys in the hash. 
  # print the list to the console [can you use one of your other methods here?]
# output: hash with items as the key, quantity as the value. 

# Method to add an item to a list
# input: hash, item, quantity
# steps: set item to equal the quantity in the hash 
# output: hash with added item 

# Method to remove an item from the list
# input: hash, item to remove
# steps: delete the item from the hash 
# output: hash with deleted item

# Method to update the quantity of an item
# input: hash, item, quantity to update
# steps: set hash key (item) to equal the new quantity
# output: hash with updated quantity

# Method to print a list and make it look pretty
# input: hash, item, quantity
# steps: iterate through the hash to print the key: value in that format using string interpolation.
# output: hash

def create_list(grocery_string)
	grocery_list = Hash.new
	grocery_items = grocery_string.split(" ")
	grocery_items.each do |item|
		grocery_list[item] = 0 
	end
	grocery_list
end

def add_item(grocery_list, item, quantity)
	grocery_list.store(item, quantity)
	grocery_list
end

def remove_item(grocery_list, item)
	grocery_list.delete(item)
	grocery_list
end

def update_list(grocery_list, item, quantity)
	grocery_list[item] = quantity
	grocery_list
end

def print_hash(grocery_list)
	puts "Grocery List: "
	grocery_list.each do |item, quantity|
		puts "#{item}: #{quantity}"
	end
	grocery_list
end



grocery_list = create_list("carrots apples cereal pizza")
add_item(grocery_list, "Lemonade", 2) 
add_item(grocery_list, "Tomatoes", 3)
add_item(grocery_list, "Ice Cream", 4) 
remove_item(grocery_list, "Lemonade")
update_list(grocery_list, "Ice Cream", 1)
print_hash(grocery_list)

=begin
	
What did you learn about pseudocode from working on this challenge?
Pseudocoding is crucial to coding in terms of organization and executing a program. Breaking down the multiple facets of a program through pseudo-coding makes things much more simple to write and test. 

What are the tradeoffs of using arrays and hashes for this challenge?
The array was better to use to split the string into separate words, and are best used for lists of single items.
The hash worked much better with the actual list because we were keeping track of more than one piece of information. 

What does a method return?
A method returns the the value of the last thing it runs, called implicit return.

What kind of things can you pass into methods as arguments?
Integers, strings, booleans...

How can you pass information between methods?
Use implicit return to the send the information outside of the method, so its accessible to other methods.

What concepts were solidified in this challenge, and what concepts are still confusing?
The concept of implicit return and the syntax of a program is still confusing to me. This challenge really solidified working with hashes and arrays. 
	
=end

