class AddIdToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :id, :primary_key
  end
end
