require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get("/") do
  @bands = Band.all()
  @venues = Venue.all()
  erb(:index)
end

get("/bands") do
  @bands = Band.all()
  erb(:bands)
end

get("/venues") do
  @venues = Venue.all()
  erb(:venues)
end

post("/bands") do
  title = params.fetch("tite")
  band = Band.new({:title => title, :id => nil})
  band.save()
  @bands = Band.all()
  erb(:bands)
end

post("/venues") do
  name = params.fetch("name")
  venue = Venue.new({:name => name, :id => nil})
  venue.save()
  @venues = Venue.all()
  erb(:venues)
end

get("/bands/:id") do
  @band = Band.find(params.fetch("id").to_i())
  @venues = Venue.all()
  erb(:band_venue)
end

get("/venues/:id") do
  @venue = Venue.find(params.fetch("id").to_i())
  @bands = Band.all()
  erb(:band_venue)
end
