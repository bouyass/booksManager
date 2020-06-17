function loadPage(file) {
	removeBold();
	localStorage.setItem("page", file);
	setBold();
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
			document.getElementById("container").innerHTML = this.responseText;
		}
	};
	xhttp.open("GET", file, true);
	xhttp.send();
}


function removeBold(){
	
	var page = localStorage.getItem("page")
	if(page == "addUser.jsp"){
		var element = document.getElementById("addUser");
		element.style.fontWeight = "normal";
	}
	
	if(page == "books.jsp"){
		var element = document.getElementById("books");
		element.style.fontWeight = "normal";
	}
	
	if(page == "users.jsp"){
		var element = document.getElementById("users");
		element.style.fontWeight = "normal";
	}
	
	if(page == "allBooks.jsp"){
		var element = document.getElementById("allBooks");
		element.style.fontWeight = "normal";
	}
}

function setBold(){
	var page = localStorage.getItem("page")
	if(page == "addUser.jsp"){
		var element = document.getElementById("addUser");
		element.style.fontWeight = "bold";
	}
	if(page == "books.jsp"){
		var element = document.getElementById("books");
		element.style.fontWeight = "bold";
	}
	if(page == "users.jsp"){
		var element = document.getElementById("users");
		element.style.fontWeight = "bold";
	}
	if(page == "allBooks.jsp"){
		var element = document.getElementById("allBooks");
		element.style.fontWeight = "bold";
	}
}