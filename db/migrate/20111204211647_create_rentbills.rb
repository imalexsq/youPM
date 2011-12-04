class CreateRentbills < ActiveRecord::Migration
  def change
    create_table :rentbills do |t|
      t.int :tenant_id
      t.date :bill_date
      t.primary_key :id

      t.timestamps
    end
  end
end
