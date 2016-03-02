# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
ActiveRecord::Base.connection.execute(<<-SQL)

  COPY players
    (PLAYER_ID, NAME, YEAR, AGE, G, PA, AB, R, H, single, double, triple, HR, TB, BB, IBB, SO, HBP, SF, SH, RBI, OBI, DP, NETDP, SB, CS, SBP, AVG, OBP, SLG, OPS, ISO, BPF, oppOPS, TAv, VORP, FRAA, BWARP, extra)
  FROM '#{Rails.root.join('db/players.csv')}'
    WITH  DELIMITER ',' CSV HEADER;

SQL