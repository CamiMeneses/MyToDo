class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.integer :list_id
      t.string :name
      t.text :description
      t.boolean :status

      t.timestamps
    end
  end
end
