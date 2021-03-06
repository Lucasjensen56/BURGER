

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


	$(".change-burger").on("click", function(event) {
		var id = $(this).data("id");
		var devoured = {
			devoured: 1
		};

		$.ajax("/api/burgers/" + id, {
			type: "PUT",
			data: devoured
		}).then(
			function() {
				console.log("changed burger to", devoured)
				location.reload();
			}
		)
	})

});