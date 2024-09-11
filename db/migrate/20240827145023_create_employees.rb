class CreateEmployees < ActiveRecord::Migration[7.2]
  def change
    create_table :employees do |t|
      t.integer :manager_id
      t.string :name
      t.integer :role
      t.timestamps
    end
  end
end
