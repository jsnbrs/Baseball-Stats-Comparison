class AddIdToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :id, :primary_key
  end
end
