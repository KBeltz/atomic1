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

get "/update_list" do
  erb :"/photos/update_list"
end

get "/update_photos" do
  erb :"/photos/update_photos"
end

get "/delete_photos" do
  erb :"/photos/delete_photos"
end

get "/delete_photo_row/:x" do
  item = Photo.find(params["x"])
  item.destroy
  erb :"/photos/photos"
end
