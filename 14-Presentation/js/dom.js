/*window.onload = function() {
    var mainList = document.getElementById('main_list');
    var li = document.createElement('li')
    li.innerHTML = 'Peantus';
    mainList.appendChild(li);
    };*/

var appendLi = function(list, text) {
    var new_li = document.createElement('li');
    new_li.innerHTML = text;
    list.appendChild(new_li);
}

var app = {
    list_values: ['Peanuts', 'Milk', 'Eggs'],
    onload: function() {
	var mainList = document.getElementById('main_list');
	for (var i = 0; i < this.list_values.length; i += 1)
	    appendLi(mainList, this.list_values[i]);
	document.getElementById('square_button').onclick = function() {
	    var val = document.getElementById('number').value;
	    document.getElementById('output').innerHTML = val*val;
	}
    }
}

window.onload = function() {
    app.onload()
    /*var mainList = document.getElementById('main_list');
    for (var i = 0; i < app.list_values.length; i += 1)
	appendLi(mainList, app.list_values[i]);
    var main_header = document.getElementById('main_header');*/
    //main_header.innerHTML = app.name;


};
