get "/albums_main" do
  erb :"/albums/albums_main"
end

get "/create_albums" do
  erb :"/albums/create_albums"
end

get "/save_album" do
  Album.create(album_title: params["album_title"])
  erb :"/main/success"
end

get "/read_albums" do
  erb :"albums/albums"
end

get "/photos_in_album/:x" do
  @item = Album.find(params["x"])
  erb :"/albums/photos_in_album"
end

get "/update_albums" do
  erb :"/albums/update_albums"
end

get "/edit_album_row/:x" do
  @item = Album.find(params["x"])
  erb :"/albums/edit_album_form"
end

get "/save_edited_album" do
  @item = Album.find(params["x"])
  @item.album_title = params["album_title"]
  @item.save
  erb :"/albums/albums"
end

get "/delete_albums" do
  erb :"/albums/delete_albums"
end

get "/delete_album_row/:x" do
  item = Album.find(params["x"])
  item.destroy
  erb :"/albums/albums"
end
