class CreatePropertyUnits < ActiveRecord::Migration
  def change
    create_table :property_units do |t|
      t.integer :property_id
      t.integer :size
      t.integer :size_measure
      t.integer :bedrooms
      t.integer :bathrooms
      t.integer :type
      t.integer :diningrooms
      t.integer :familyrooms
      t.integer :officerooms
      t.boolean :basement
      t.boolean :loft
      t.string :floortype
      t.boolean :fireplace
      t.boolean :swimmingpool
      t.boolean :spa
      t.boolean :pets_allowed
      t.boolean :green
      t.boolean :accessible
      t.boolean :furnished

      t.timestamps
    end
  end
end
