function getRandomColor() {
        var letters = '0123456789ABCDEF';
        var color = '#';
        
        for (var i = 0; i < 6; i++) {
            color += letters[Math.floor(Math.random() * 16)];
        }
        return color;
}

function swapcolor() {
	if ($(".block2").html("vroum")) {
		alert('test');
		$("body").css("background-color", "black");
		$(".block2").html("Normal mode");
	}
	else if ($(".block2").html("Normal mode")) {
		alert('test2');
		$("body").css("background-color", "white");
		$(".block2").html("Inverted mode");
	}
}

function addcontrast() {

}

function setRandomColor() {
    	$("#random_color").css("color", getRandomColor());
 }
