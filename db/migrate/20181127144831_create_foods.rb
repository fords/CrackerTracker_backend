class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :breakfast
      t.string :lunch
      t.string :dinner
      t.datetime :calendar

      t.timestamps
    end
  end
end
