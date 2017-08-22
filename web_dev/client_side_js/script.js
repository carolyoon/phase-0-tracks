// console.log("This is the console log")

var els = document.getElementsByTagName("h1");

var header = els[0];

header.style.color = "blue";

var caption = document.getElementsByTagName("p")

var photo_caption = caption[1]

photo_caption.style.textAlign = "center"


function addPinkBackgroundColor(event) {
	var body = document.getElementsByTagName("body");
	var actual_body = body[0];
	actual_body.style.backgroundColor = "pink";
}


var photo = document.getElementsByTagName("img");
var puppy_photo = photo[0];
puppy_photo.addEventListener("click", addPinkBackgroundColor);

