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

get "/update_list" do
  erb :"/albums/update_list"
end

get "/update_albums" do
  erb :"/albums/update_albums"
end

get "/edit_album_row" do

end

get "/delete_albums" do
  erb :"/albums/delete_albums"
end

get "/delete_album_row" do

end
