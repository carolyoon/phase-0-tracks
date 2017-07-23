

#create a loop so variable value is incremented by 1
#create index method for variable 
#set first variable to a
def one_letter_forward(string)
	counter = 0
	while counter < string.length
		string[counter] = string[counter].next
		counter += 1
	end
end
one_letter_forward("abc")