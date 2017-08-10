class CreateAssassins < ActiveRecord::Migration[5.1]
  def change
    create_table :assassins do |t|
      t.string :character_name, default: "Zer0"
      t.integer :level, default: 1
      t.integer :experience, default: 0
      t.integer :health, default: 90
      t.integer :current_health, default: 90
      t.integer :action_points, default: 10
      t.integer :badass_points, default: 0
      t.integer :evasion, default: 65

      t.timestamps
    end
  end
end
