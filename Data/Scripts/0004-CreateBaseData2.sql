Declare @insProj int

Insert into Project (ProjectTypeKey, Active, Title, Description, StartDate, CompletionDate)
	Values (2, 1, 'Balyansy Residence', '<p>12,500 Square Foot home located in Cresent H Ranch</p>', '2011-01-01', '2011-12-31')

Set @insProj = @@IDENTITY

Insert into ProjectImage (ProjectKey, ImagePath, SortOrder, DefaultImage)
	Values (@insProj, '~/Projects/images/BLYNSY/Home1.jpg', 0, 1)

Insert into ProjectImage (ProjectKey, ImagePath, SortOrder, DefaultImage)
	Values (@insProj, '~/Projects/images/BLYNSY/Home2.jpg', 5, 0)

Insert into ProjectImage (ProjectKey, ImagePath, SortOrder, DefaultImage)
	Values (@insProj, '~/Projects/images/BLYNSY/Home3.jpg', 10, 0)

Insert into ProjectImage (ProjectKey, ImagePath, SortOrder, DefaultImage)
	Values (@insProj, '~/Projects/images/BLYNSY/Home4.jpg', 20, 0)

Insert into ProjectImage (ProjectKey, ImagePath, SortOrder, DefaultImage)
	Values (@insProj, '~/Projects/images/BLYNSY/Home5.jpg', 30, 0)
