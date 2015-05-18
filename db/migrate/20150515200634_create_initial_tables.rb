class CreateInitialTables < ActiveRecord::Migration
  def change
    create_table(:bands) do |b|
      b.column(:title, :string)

      b.timestamps()
    end
    create_table(:venues) do |v|
      v.column(:title, :string)

      v.timestamps()
    end
    create_table(:bands_venues) do |bv|
      bv.column(:band_id, :int)
      bv.column(:venue_id, :int)

      bv.timestamps()
    end
  end
end
