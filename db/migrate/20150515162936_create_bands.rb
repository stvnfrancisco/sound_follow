class CreateBands < ActiveRecord::Migration
  def change
    create_table(:bands) do |b|
      b.column(:title, :string)
      
      b.timestamps()
    end
  end
end
