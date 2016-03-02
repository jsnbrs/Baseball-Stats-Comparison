# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


ActiveRecord::Base.connection.execute(<<-SQL)

  COPY players
    (playerID,birthYear,birthMonth,birthDay,birthCountry,birthState,birthCity,deathYear,deathMonth,deathDay,deathCountry,deathState,deathCity,nameFirst,nameLast,nameGiven,weight,height,bats,throws,debut,finalGame,retroID,bbrefID)
  FROM '#{Rails.root.join('db/Master.csv')}'
    WITH  DELIMITER ',' CSV HEADER;

  COPY batters
  (playerID,yearID,stint,teamID,lgID,G,AB,R,H,double,triple,HR,RBI,SB,CS,BB,SO,IBB,HBP,SH,SF,GIDP)
  FROM '#{Rails.root.join('db/Batting.csv')}'
    WITH  DELIMITER ',' CSV HEADER;

  COPY pitchers
  (playerID,yearID,stint,teamID,lgID,W,L,G,GS,CG,SHO,SV,IPouts,H,ER,HR,BB,SO,BAOpp,ERA,IBB,WP,HBP,BK,BFP,GF,R,SH,SF,GIDP)
  FROM '#{Rails.root.join('db/Pitching.csv')}'
    WITH  DELIMITER ',' CSV HEADER;

  COPY teams
    (yearID,lgID,teamID,franchID,divID,Rank,G,Ghome,W,L,DivWin,WCWin,LgWin,WSWin,R,AB,H,double,triple,HR,BB,SO,SB,CS,HBP,SF,RA,ER,ERA,CG,SHO,SV,IPouts,HA,HRA,BBA,SOA,E,DP,FP,name,park,attendance,BPF,PPF,teamIDBR,teamIDlahman45,teamIDretro)
  FROM '#{Rails.root.join('db/Teams.csv')}'
    WITH  DELIMITER ',' CSV HEADER;

SQL