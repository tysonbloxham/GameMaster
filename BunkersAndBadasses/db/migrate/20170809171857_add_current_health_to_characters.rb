class AddCurrentHealthToCharacters < ActiveRecord::Migration[5.1]
  def change
    add_column :characters, :current_health, :integer
  end
end
