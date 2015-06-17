class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.boolean :status
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :tasks, :users
  end
end
