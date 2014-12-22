var timeFormatter = function(value, row, index) {
	return "Thu 1:00pm";
};

var sizeFormatter = function(value, row, index) {
	return value;
};

var priceFormatter = function(value, row, index) {
	return '$' + value;
};

var idFormatter = function(value, row, index) {
	return "<a class='btn btn-xs btn-theme-1 btn-block contest-table-enter' href='contests/" + value + "'>Enter</a>";
};

var lobbyLoadTable = function() {
	$('#contest-table').bootstrapTable({
	   	url: '/contests',
	    striped: true,
	    columns: [{
	        field: 'name',
	        title: 'Contest',
	        valign: 'middle',
	        align: 'Left',
	        sortable: true,
	        class: 'first'
	    }, {
	        field: 'type',
	        title: 'Type',
	        valign: 'middle',
	        align: 'left',
	        sortable: true,
	        width: 100
	    }, {
	        field: 'start',
	        title: 'Start',
	        valign: 'middle',
	        align: 'right',
	        sortable: true,
	        width: 140,
	        formatter: timeFormatter
	    }, {
	        field: 'capacity',
	        title: 'Size',
	        valign: 'middle',
	        align: 'right',
	        sortable: true,
	        width: 80,
	        formatter: sizeFormatter
	    }, {
	        field: 'cost',
	        title: 'Entry Fee',
	        valign: 'middle',
	        align: 'right',
	        sortable: true,
	        width: 100,
	        formatter: priceFormatter
	    }, {
	    	field: 'id',
	    	title: '',
	    	valgin: 'middle',
	    	align: 'center',
	    	class: 'col-xs-2 last',
	    	formatter: idFormatter
	    }],
	});
}

// lobby
$(document).on('page:load', lobbyLoadTable);
$(document).ready(lobbyLoadTable);

var contestLoad = function() {
	$.get('/contests/'+window.location.pathname)
}