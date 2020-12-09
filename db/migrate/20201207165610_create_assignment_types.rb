class CreateAssignmentTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :assignment_types do |t|
      t.string :assignment_type

      t.timestamps
    end
  end
end
