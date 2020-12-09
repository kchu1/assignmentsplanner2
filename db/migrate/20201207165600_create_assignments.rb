class CreateAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.integer :assignment_type_id
      t.date :due
      t.integer :course_id
      t.text :description
      t.string :name

      t.timestamps
    end
  end
end
