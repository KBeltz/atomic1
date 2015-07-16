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
  # Photographer.all
  # iterate and stuff.
end

get "/update_list" do
  erb :"/photos/update_list"
end

get "/update_photos" do
  erb :"/photos/update_photos"
end

get "/edit_photo_row" do

end

get "/delete_photos" do
  erb :"/photos/delete_photos"
end

get "/delete_photo_row" do

end
