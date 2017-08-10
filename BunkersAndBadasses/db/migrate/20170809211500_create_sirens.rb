class CreateSirens < ActiveRecord::Migration[5.1]
  def change
    create_table :sirens do |t|
      t.string :character_name, default: "Maya"
      t.integer :level, default: 1
      t.integer :experience, default: 0
      t.integer :health, default: 100
      t.integer :current_health, default: 100
      t.integer :action_points, default: 12
      t.integer :badass_points, default: 0
      t.integer :evasion, default: 55
      t.timestamps
    end
  end
end
