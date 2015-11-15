class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :id_number
      t.string :cell_number
      t.integer :court_id
      t.timestamps null: false
    end
  end
end
