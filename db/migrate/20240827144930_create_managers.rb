class CreateManagers < ActiveRecord::Migration[7.2]
  def change
    create_table :managers do |t|
      t.string :name
      t.timestamps
    end
  end
end
