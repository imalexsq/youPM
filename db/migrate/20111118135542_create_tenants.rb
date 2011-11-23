class CreateTenants < ActiveRecord::Migration
  def change
    create_table :tenants do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :phone_private
      t.string :phone_work
      t.string :phone_mobile
      t.integer :id_number
      t.integer :id_issuer
      t.date :date_of_birth

      t.timestamps
    end
  end
end
