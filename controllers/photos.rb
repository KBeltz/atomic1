get "/photos_main" do
  erb :"/photos/photos_main"
end

get "/create_photos" do
  erb :"/photos/create_photos"
end

get "/save_photo" do
  Photo.create(title: params["title"])
  erb :"/main/success"
end

get "/read_photos" do
  erb :"/photos/photos"
end

get "/albums_with_photo/:x" do
  @item = Photo.find(params["x"])
  erb :"/photos/albums_with_photo"
end

get "/update_photos" do
  erb :"/photos/update_photos"
end

get "/edit_photo_row/:x" do
  @item = Photo.find(params["x"])
  erb :"/photos/edit_photo_form"
end

get "/save_edited_photo" do
  a = params["album_id"]
  if a.empty? == false
    @item = Photo.find(params["x"])
    @item.title = params["title"]
    @item.photographer_id = params["photographer_id"]
    album = Album.find(params["album_id"])
    album.photos << @item
    @item.save
    album.save
  else
    @item = Photo.find(params["x"])
    @item.title = params["title"]
    @item.photographer_id = params["photographer_id"]
    @item.save
  end
  erb :"/main/success"
end

get "/delete_photos" do
  erb :"/photos/delete_photos"
end

get "/delete_photo_row/:x" do
  item = Photo.find(params["x"])
  item.destroy
  erb :"/photos/photos"
end
