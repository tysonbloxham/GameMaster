class CreatePsychos < ActiveRecord::Migration[5.1]
  def change
    create_table :psychos do |t|
      t.string :character_name, default: "Krieg"
      t.integer :level, default: 1
      t.integer :experience, default: 0
      t.integer :health, default: 150
      t.integer :current_health, default: 150
      t.integer :action_points, default: 10
      t.integer :badass_points, default: 0
      t.integer :evasion, default: 30

      t.timestamps
    end
  end
end
