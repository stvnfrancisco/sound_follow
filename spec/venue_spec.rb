require("spec_helper")

describe(Venue) do
  describe("#band") do
      it("should return all of the bands that played this venue") do
        new_venue = Venue.new({:title => "CBGB"})
        new_band1 = new_venue.bands.new({:title => "Dead Kennedys"})
        new_band2 = new_venue.bands.new({:title => "Morphine"})
        expect(new_venue.bands()).to(eq([new_band1, new_band2]))
      end
    end
  end
