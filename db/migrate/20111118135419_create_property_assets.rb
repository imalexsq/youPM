class CreatePropertyAssets < ActiveRecord::Migration
  def change
    create_table :property_assets do |t|
      t.integer :type
      t.string :url
      t.integer :width
      t.integer :height
      t.integer :visibility

      t.timestamps
    end
  end
end
