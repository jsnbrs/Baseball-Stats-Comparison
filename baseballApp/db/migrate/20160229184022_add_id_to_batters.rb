class AddIdToBatters < ActiveRecord::Migration
  def change
    add_column :batters, :id, :primary_key
  end
end
