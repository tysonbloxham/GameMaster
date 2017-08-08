class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.string :character_name
      t.integer :level
      t.integer :experience
      t.integer :health
      t.integer :action_points
      t.integer :badass_points
      t.integer :evasion
      t.string :character_class

      t.timestamps
    end
  end
end
