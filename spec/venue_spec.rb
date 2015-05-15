require("spec_helper")

describe(Venue) do
    describe('#bands') do
      it("should return all of the bands that played this venue") do
        test_venue = Venue.create({:name => "CBGB"})
        test_band1 = test_venue.bands.create({:name => "Dead Kennedys"})
        test_band2 = test_venue.bands.create({:name => "Morphine"})
        expect(test_venue.bands).to(eq([test_band1, test_band2]))
      end
    end
  end
