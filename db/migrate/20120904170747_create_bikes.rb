class CreateBikes < ActiveRecord::Migration
  def change
    create_table :bikes do |t|
      t.string :model
      t.integer :year
      t.integer :person_id

      t.timestamps
    end
  end
end
