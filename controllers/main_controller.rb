# The path being defined for this controller action is just "/", meaning 
# the root path. It's the homepage.


MyApp.get "/about" do
  erb :"main/about"
end

MyApp.get "/favorites" do
  erb :"main/favorites"
end

MyApp.get "/greet/Sumeet" do
  erb :"main/greet/Sumeet"
end

MyApp.get "/greet/:num" do
  erb :"main/greet/random"
end

MyApp.get "/" do
  # If a GET request is made to the root path, the following line of code
  # looks for a .erb view file located in the 'views' directory at the given
  # location. So it's going to look for views/main/welcome.erb.
  # 
  # Then it will combine that view file with the layout file and send the
  # combined document back to the client.
  erb :"main/welcome"
end