class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :manager_id
      t.text :description
      t.date :date
      t.string :url
      t.integer :urgency
      t.string :tag

      t.timestamps
    end
  end
end
