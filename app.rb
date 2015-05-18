require("bundler/setup")
Bundler.require(:default, :test)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get("/") do
  @bands = Band.all()
  erb(:index)
end

get('/venues/') do
  @venues = Venue.all()
  erb(:venues)
end

post('/venue/save/') do
  Venue.create({:title => params.fetch('new_venue')})
  @venues = Venue.all()
  erb(:venues)
end

post('/') do
  Band.create({:title => params.fetch('new_band')})
  @bands = Band.all()
  erb(:index)
end

get('/band/:id') do
  @band = Band.find(params.fetch('id').to_i())
  @venues = @band.venues()
  @all_venues = Venue.all()
  erb(:band)
end

patch('/band/:id') do
  @band = Band.find(params.fetch('id'))
  @venue_ids = params.fetch('venue_ids')
  if @venue_ids.any?
    @venue_ids.each do |venue_id|
      @new_venue = Venue.find(venue_id)
      @band.venues.push(@new_venue)
    end
  end
  redirect("/band/#{params.fetch('id')}")
end

get('/venue/:id') do
  @venue = Venue.find(params.fetch('id').to_i())
  @bands = @venue.bands()
  @all_bands = Band.all()
  erb(:venue)
end

patch('/venue/:id') do
  @venue = Venue.find(params.fetch('id'))
  @band_ids = params.fetch('band_ids')
  if @band_ids.any?
    @band_ids.each do |band_id|
      @new_band = Band.find(band_id)
      @venue.bands.push(@new_band)
    end
  end
end

delete('/band/:id') do
  @band = Band.find(params.fetch('id'))
  @band.destroy
  @bands = Band.all
  erb(:index)
end

get('/venue/:id') do
  @venue = Venue.find(params.fetch('id'))
  erb(:venue)
end

delete('/venue/:id') do
  @venue = Venue.find(params.fetch('id'))
  @venue.destroy
  @venues = Venue.all()
  erb(:venues)
end
