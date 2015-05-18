 require("spec_helper")

     describe(Band) do
       describe("#venue") do
       it("should return all of the venues this band played") do
         new_band = Band.new({:title => "Dead Kennedys"})
         new_venue1 = new_band.venues.new({:title => "CBGB"})
         new_venue2 = new_band.venues.new({:title => "Crystal Ballroom"})
         expect(new_band.venues()).to(eq([new_venue1, new_venue2]))
       end
     end
   end
