class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :meets
      t.string :prof_email
      t.integer :user_id
      t.timestamps
    end
  end
end
