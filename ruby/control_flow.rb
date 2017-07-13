# We can evaluate boolean variables and values
# Try setting the variable below to both true and then false
# to see how the result changes
# done_with_phase0 =
if done_with_phase0 == true
  feedback = "Great job!"
else
  feedback = "You're doing swell, keep it up!"
end

p feedback

# We can use built-in predicate methods to return true/false values
# to evaluate using the if/else statement
# number =
if number.odd?
  number_result = "This is an odd number."
else
  number_result = "This is not an odd number - its even."
end

p number_result

# We can use different operators to evaluate as well
# num =
if num > 0
  result = "This number is positive"
elsif num < 0
  result = "This number is negative"
else
  result = "This number is zero"
end

p result

# Let's set a variable based on a condition met
# pizza_size = ""

if pizza_size == "small"
  slices = 8
elsif pizza_size == "medium"
  slices = 12
elsif pizza_size == "large"
  slices = 16
else
  slices = 0
end

p "Your pizza has #{slices} slices."
