get "/photographers_main" do
  erb :"/photographers/photographers_main"
end

get "/create_photographers" do
  erb :"/photographers/create_photographers"
end

get "/save_photographer" do
  Photographer.create(name: params["name"])
  erb :"/main/success"
end

get "/read_photographers" do
  erb :"/photographers/photographers"
end

get "/photos_by_photographer/:x" do
  @item = Photographer.find(params["x"])
  erb :"/photographers/photos_by_photographer"
end

get "/update_photographers" do
  erb :"/photographers/update_photographers"
end

get "/delete_photographers" do
  erb :"/photographers/delete_photographers"
end

get "/delete_photographer_row/:x" do
  item = Photographer.find(params["x"])
  item.destroy
  erb :"photographers/photographers"
end
