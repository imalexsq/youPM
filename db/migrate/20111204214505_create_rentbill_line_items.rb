class CreateRentbillLineItems < ActiveRecord::Migration
  def change
    create_table :rentbill_line_items do |t|
      t.integer :rentbill_id
      t.decimal :amount
      t.string :category
      t.text :description

      t.timestamps
    end
  end
end
