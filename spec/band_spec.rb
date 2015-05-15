 require("spec_helper")

     describe(Band) do
     describe('#venues') do
       it("should return all of the venues this band played") do
         test_band = Band.create({:name => "Dead Kennedys"})
         test_venue1 = test_band.venues.create({:name => "CBGB"})
         test_venue2 = test_band.venues.create({:name => "Crystal Ballroom"})
         expect(test_band.venues).to(eq([test_venue1, test_venue2]))
       end
     end
   end
