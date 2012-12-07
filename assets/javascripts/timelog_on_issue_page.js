document.observe('dom:loaded', function(){	
	if ($('issue-changesets'))
		$('issue-changesets').insert({bottom: $('issue_timelog')});
	else
		{
		var issue_changesets =  new Element('div', {'id': 'issue-changesets'}).insert($('issue_timelog'));
		$$('div.issue').first().insert({after: issue_changesets});
		}
	});