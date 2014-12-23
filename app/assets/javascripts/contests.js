var loadEntryCount = function(contest_id) {

	console.log("loading entry count");
	
	$.get('/entries?', {"contest_id": contest_id}, 
		function(entries) {

			entry_count = entries.length;
			current_display = $('#contest-entries').html()

			// update the entry count in the display
			new_display = entry_count + "/" + current_display.split('/')[1];
			$('#contest-entries').html(new_display);
		}
	);
}

// contest page
// $(document).ready(loadEntryCount(1));
$(document).on('page:load', loadEntryCount(1));

