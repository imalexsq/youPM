class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.integer :manager_id
      t.string :name
      t.text :headline
      t.text :description
      t.string :streetaddress
      t.string :zipcode
      t.string :city
      t.string :state
      t.string :country
      t.float :longitude
      t.float :latitude
      t.integer :type
      t.string :year_built
      t.integer :stories

      t.timestamps
    end
  end
end
