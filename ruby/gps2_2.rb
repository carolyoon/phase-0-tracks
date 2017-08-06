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
# input:
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input: hash
# steps: iterate through the hash to print the key: value in that format using string interpolation.
# output: nil. 

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



