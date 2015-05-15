require("spec_helper")

  describe(Venue) do
    describe('#bands') do
      it("should return all of the bands for this venue") do
        test_venue = Venue.create({:name => "CBGB"})
        test_venue1 = test_venue.bands.create({:title => "Dead Kennedys"})
        test_venue2 = test_venue.bands.create({:title => "Morphine"})
        expect(test_venue.bands).to(eq([test_venue1, test_venue2]))
      end
    end
  end
