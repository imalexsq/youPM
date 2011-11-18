class CreatePropertyAssets < ActiveRecord::Migration
  def change
    create_table :property_assets do |t|
      t.int :type
      t.string :url
      t.int :width
      t.height :height
      t.int :visibility

      t.timestamps
    end
  end
end
