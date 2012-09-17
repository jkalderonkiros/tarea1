class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :model
      t.integer :year
      t.references :person

      t.timestamps
    end
    add_index :cars, :person_id
  end
end
