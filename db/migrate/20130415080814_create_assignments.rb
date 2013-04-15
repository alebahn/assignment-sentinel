class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :course_id
      t.string :name
      t.datetime :due_date

      t.timestamps
    end
  end
end
