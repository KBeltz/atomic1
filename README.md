#Exercises

Create a Photographer model.
You should be able to call `p = Photographer.new(some_photographer_options)` and then `p.save` to save it to the database.
You should be able to call Photographer.all to get a list of all photographers in the database.
What else can you do with this model?
This should all be be magically easy.
Add a Photo model.
It should be as easy as making Photographer was.
Use an ActiveRecord association so that you can run `some_photographer.photos` to get all of their photos from the database.
You should be able to create a photo for a given photographer by running some_photographer.create_photo(...).
What else can you do?
Add an Album model.
Research `has_and_belongs_to_many` to create a many-to-many relationship between albums and photos.
You should be able to do `some_photo.albums` to get a list of all of a given photo's albums.
What else can you do?
Implement validations using ActiveRecord.
For example, you should not be able to add a photo without a title.
Add a `top_photo?` method to the Photo model that returns true/false for whether that photo is in at least 3 albums. (Basically, if a photo is in so many albums, it must be really good. So we'll call it a "top photo".)
