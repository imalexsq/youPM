class CreatePropertyUnits < ActiveRecord::Migration
  def change
    create_table :property_units do |t|
      t.int :size
      t.int :size_measure
      t.int :bedrooms
      t.int :bathrooms
      t.int :type
      t.int :diningrooms
      t.int :familyrooms
      t.int :officerooms
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
