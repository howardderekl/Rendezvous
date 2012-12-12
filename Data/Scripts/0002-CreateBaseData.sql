--ProjectTypes
Insert into ProjectType (ID, Title, Description)
	values ('CustWood', 'Custom Wood Homes', '<p>Custom Wood Homes Description Here</p>')

Insert into ProjectType (ID, Title, Description)
	values ('TMBFRM', 'Timber Frame Homes', '<p>Timber Frame Homes Description Here</p>')

Insert into ProjectType (ID, Title, Description)
	values ('WESTCONT', 'Western Contemporary Homes', '<p>Western Contemporary Homes Description Here</p>')

Insert into ProjectType (ID, Title, Description)
	values ('WESTMODRN', 'Western Modern Homes', '<p>Western Modern Homes Description Here</p>')

Insert into ProjectType (ID, Title, Description)
	values ('HISTWOOD', 'Historic/Reclaim Wood Homes', '<p>Historyic/Reclaim Wood Homes Description Here</p>')

Insert into ProjectType (ID, Title, Description)
	values ('GRNHOME', 'Green Homes', '<p>Green Homes Description Here</p>')

Insert into Project (ProjectTypeKey, Active, Title, Description, StartDate, CompletionDate)
	values (4, 1, 'Derek & Tracie Howard Estates', '<p>This is the description of the Derek & Tracie Howard Estates Home project.  This is a test.</p>', '2011-11-01', '2013-12-21')

Insert into Project (ProjectTypeKey, Active, Title, Description, StartDate, CompletionDate)
	values (2, 1, 'Jeff & Kody Jeppesen Ranch', '<p>This ranch is nestled in the Jackson valley near Sage Junction.  This is a project of love, blah bla blah.</p>', '2010-01-01', '2012-05-31')

Insert into Project (ProjectTypeKey, Active, Title, Description, StartDate, CompletionDate)
	values (1, 1, 'Steve and Franny May Retirement Home', '', '2010-01-15', '2011-04-01')
