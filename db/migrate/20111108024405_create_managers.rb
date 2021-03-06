class CreateManagers < ActiveRecord::Migration
  def change
    create_table :managers do |t|
      t.string :email
      t.string :password_digest
      t.string :lastname
      t.string :firstname
      t.string :phonenumber
      t.string :company_name
      t.text   :streetaddress
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.string :website

      t.timestamps
    end
  end
end
