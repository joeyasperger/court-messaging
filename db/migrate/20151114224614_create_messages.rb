class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :text
      t.datetime :time
      t.integer :hearing_id
      t.boolean :sent
      t.timestamps null: false
    end
  end
end
