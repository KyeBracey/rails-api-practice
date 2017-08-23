class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :hold
      t.string :type

      t.timestamps
    end
  end
end
