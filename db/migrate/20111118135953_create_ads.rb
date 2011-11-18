class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.string :url
      t.date :expiration_date
      t.string :account_name
      t.text :description
      t.int :num_responses

      t.timestamps
    end
  end
end
