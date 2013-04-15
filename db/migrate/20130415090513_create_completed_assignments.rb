class CreateCompletedAssignments < ActiveRecord::Migration
  def change
    create_table :completed_assignments do |t|
      t.integer :assignment_id
      t.integer :user_id
      t.datetime :done_date

      t.timestamps
    end
  end
end
