class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.integer :user_id
      t.integer :status
      t.date :deadline

      t.timestamps
    end
  end
end
