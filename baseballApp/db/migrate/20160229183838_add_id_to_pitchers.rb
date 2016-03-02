class AddIdToPitchers < ActiveRecord::Migration
  def change
    add_column :pitchers, :id, :primary_key
  end
end
