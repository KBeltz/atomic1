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
  # Photographer.all
  # iterate and stuff.

end
