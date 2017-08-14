// Reverse a string
// take a string as the parameter
// set new variable equal to a new (empty) string for the reversed string
// for each letter in the string, set its index number to the length of the string minus one.
	// Decrease the index number each time by one for the next letter until index number is zero.
// Add the letters at their new index numbered positions to the new string variable.
// Return new string

function reverseString(s) {
	var j = '';
	for (var i = s.length -1; i >=0; i--)
		j += s[i];
		return j
}

if (1==1) {
	console.log(reverseString("string"));
}
