class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players, id: false do |t|
      t.integer :player_id, primary_key: true
      t.string :name
      t.string :year
      t.string :age
      t.integer :g
      t.integer :pa
      t.integer :ab
      t.integer :r
      t.integer :h
      t.integer :single
      t.integer :double
      t.integer :triple
      t.integer :hr
      t.integer :tb
      t.integer :bb
      t.integer :ibb
      t.integer :so
      t.integer :hbp
      t.integer :sf
      t.integer :sh
      t.integer :rbi
      t.float :obi
      t.integer :dp
      t.float :netdp
      t.integer :sb
      t.integer :cs
      t.float :sbp
      t.float :avg
      t.float :obp
      t.float :slg
      t.float :ops
      t.float :iso
      t.integer :bpf
      t.float :oppops
      t.float :tav
      t.float :vorp
      t.float :fraa
      t.float :bwarp
      t.float :extra

    end
  end
end
