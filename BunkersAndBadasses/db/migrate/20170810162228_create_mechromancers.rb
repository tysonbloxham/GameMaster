class CreateMechromancers < ActiveRecord::Migration[5.1]
  def change
    create_table :mechromancers do |t|
      t.string :character_name, default: "Gaige"
      t.integer :level, default: 1
      t.integer :experience, default: 0
      t.integer :health, default: 90
      t.integer :current_health, default: 90
      t.integer :action_points, default: 11
      t.integer :badass_points, default: 0
      t.integer :evasion, default: 60

      t.timestamps
    end
  end
end
