//Create array with words or phrases
//Create empty variable for length of the longest word
//Set function to take array and calculate length of each word or phrase.
//Set conditional if a length is greater than the one prior, set as new longest word value.
//Set the word at the index value of the longest word to new variable, 
//Return word with longest value set to the new variable. 



function longestWord(array){
	var longestWord = 0;

	for(var i = 0; i < array.length; i++){
		if (array[i].length > longestWord) {
			longestWord = array[i].length;
			longestString = array[i]
		}
	}
	return longestString;
}



//Create function that takes two objects as arguments
//Compare each key in the first object with each key in the second. 
//Compare each value in the first object with each value im the second.
//If any of them are equal, return true. 
//Else return false.


function compareObjects(first_object, second_object) {
	for (var key in first_object) {
		for (var other_key in second_object) {
			if (key == other_key) {
				if (first_object[key] == second_object[other_key]) {
					return true;
				}
			}
		}
	}
	return false;
}

//Create function to take an integer that will represent the number of items("strings") created in an array.
//Create an empty array to store the string items
//Set an empty string for the random word that will be created, 1-10 letters in length
//Use random number generator to equal the length of the string. 
//Until the length of the string is equal to the random number generated, add a random chracter to the empty string variable.
	//so the number of letters added to the string will be equal to the number of times a new letter is generated, based on the random number.
//Push the random word into the array
//Print the array.
//Repeat until the length of the array (number of items) is equal to the integer passed in as the argument. 

function createWords(number) {
  var word_array = []
  while (word_array.length <= number) {
    random_word = ""
    random_word_length = Math.floor((Math.random() * 10) + 1);
     while (random_word.length <= random_word_length) {
        random_word += String.fromCharCode( 97 + ~~(Math.random() * 26))
      }
    word_array.push(random_word)
  }
console.log(word_array)
}

createWords(8)




// DRIVER CODE
//Release 0
// console.log(longestWord(["long", "longer", "longest"]))
// console.log(levemongestWord(["Carol", "Carolyn", "Caroline"]))
// console.log(longestWord(["Javascript", "Ruby", "HTML", "CSS"]))

//Release 1
//console.log(compareObjects({name: "Steven", age: 54}, {name: "Tamir", age: 54}))
//console.log(compareObjects({name:"Carol", age: 29}, {name: "Carol", age: 31}))
//console.log(compareObjects({name: "Stacy", age: 30},{name: "Gaille", age: 31}))

//Release 2
//createWords(8)
//longestWord(array)
