class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.text :description
      t.date :date
      t.string :url
      t.int :urgency

      t.timestamps
    end
  end
end
