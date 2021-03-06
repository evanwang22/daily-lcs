var typeFormatter = function(value, row, index) {
	if (value == 'tournament')
		return 'Tournament';
	else if (value == 'league')
		return 'League';
	else if (value == 'h2h')
		return 'Head-to-head';
	else if (value == 'multiplier')
		return 'Multiplier';
	else
		return value;
};
var timeFormatter = function(value, row, index) {
	var parts = value.split(' ');
	var day = parts[0];
	var time = parts[2].split(':');
	var period = time[0] < 12 ? 'am' : 'pm';
	var hour = time[0] < 1 ? 12 : (time[0] < 13 ? time[0] : time[0] - 12);
	var minute = time[1];
	return day + ' ' + hour + ':' + minute + period;
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
	    pagination: true,
	    pageSize: 25,
	    search: true,
	    filter: true,
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
	        width: 125,
	        formatter: typeFormatter
	    }, {
	        field: 'startTime',
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
