require 'string_segmenter.rb'
# The path being defined for this controller action is just "/", meaning 
# the root path. It's the homepage.
MyApp.get "/" do
  # If a GET request is made to the root path, the following line of code
  # looks for a .erb view file located in the 'views' directory at the given
  # location. So it's going to look for views/main/welcome.erb.
  # 
  # Then it will combine that view file with the layout file and sent the
  # combined document back to the client.
  erb :"main/welcome"
end

MyApp.get "/about" do
erb :"main/about"
end

MyApp.get "/favorites" do
  erb :"main/favorites"
end

MyApp.get "/" do
  erb :"main/links"
end

MyApp.get "/greet/Sumeet" do
  erb :"greet/sumeet"
end

MyApp.get "/:num" do
  erb :"greet/mach1"
end



