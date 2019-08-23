class CreateParks < ActiveRecord::Migration[5.2]
  def change
    create_table :parks do |t|
      t.column(:name, :string)
      t.column(:description, :string)
      t.column(:location, :string)
      t.timestamps
    end
  end
end
