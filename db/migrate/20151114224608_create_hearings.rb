class CreateHearings < ActiveRecord::Migration
  def change
    create_table :hearings do |t|
      t.string :location
      t.datetime :date
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
