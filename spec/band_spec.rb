require("spec_helper")

  describe(Band) do
    describe('#venues') do
      it("should return all of the venues for this band") do
        test_band = Band.create({:title => "Dead Kennedys"})
        test_band1 = test_band.venues.create({:name => "CBGB"})
        test_band2 = test_band.venues.create({:name => "Crystal Ballroom"})
        expect(test_band.venues).to(eq([test_band1, test_band2]))
      end
    end
  end
