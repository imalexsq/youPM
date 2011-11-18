class CreateWorkAssignments < ActiveRecord::Migration
  def change
    create_table :work_assignments do |t|
      t.date :service_from

      t.timestamps
    end
  end
end
