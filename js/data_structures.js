


var colors = ["blue", "red", "green", "yellow"]

var horse_names = ["Ed", "Bubbles", "Godfather", "Katy Perry"]

// Add to the arrays code
// colors.push("orange")
// horse_names.push("Bucky")

horses = {};
for (var i = 0; i < horse_names.length; i++ ) {
     {
    horses[horse_names[i]] = colors[i]
    }
}

console.log(horses)


//Creating Cars

function Car(year, make, model, in_stock) {
	console.log("Your new car: ", this);
	this.year = year;
	this.make = make;
	this.model = model;
	this.in_stock = in_stock;
	this.honk = function() { console.log("BEEP!"); };

	console.log("CAR INITIALIZATION COMPLETE");
}

console.log("Lets design a car...")
var firstCar = new Car(2015, "Honda", "Civic", true);
console.log(firstCar);
console.log("This car's horn sounds like this: ");
firstCar.honk();
console.log("----------")

console.log("Lets design a car...")
var secondCar = new Car(2011, "Ford", "Mustang", false);
console.log(secondCar);
console.log("This car's horn sounds like this: ");
secondCar.honk();
console.log("----------")

console.log("Lets design a car...")
var thirdCar = new Car(2017, "Audi", "TT", true);
console.log(thirdCar);
console.log("This car's horn sounds like this: ");
thirdCar.honk();
console.log("----------")

