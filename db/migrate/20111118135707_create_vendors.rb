class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :company_name
      t.string :streetaddress
      t.string :phone_number
      t.string :phone_mobile
      t.string :phone_emergency
      t.string :fax_number
      t.string :email
      t.string :website
      t.string :contact_person
      t.text :description
      t.text :services
      t.int :vendor_type

      t.timestamps
    end
  end
end
