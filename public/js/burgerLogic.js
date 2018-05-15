

$(function() { 
      
      $("#addBurger").on("click", function(event) {
            event.preventDefault();
            console.log("btn clicked")

            var newBurger = {
            	burger_name: $("#addBurgerInput").val().trim(),
            	devoured: 0
            };

            $.ajax("/api/burgers", {
            	type: "POST",
            	data: newBurger
            }).then(
            	function() {
            		console.log("new Burger Created");

            		location.reload();
            	}
            )


            console.log(newBurger)

      })
});