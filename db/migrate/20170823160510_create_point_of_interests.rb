class CreatePointOfInterests < ActiveRecord::Migration[5.1]
  def change
    create_table :point_of_interests do |t|
      t.string :name
      t.string :buildingtype
      t.string :string
      t.text :description
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
