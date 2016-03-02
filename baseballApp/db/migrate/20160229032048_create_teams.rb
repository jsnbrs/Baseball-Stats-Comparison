class CreateTeams < ActiveRecord::Migration
  def change

    ActiveRecord::Base.connection.execute(<<-SQL)
      DROP TABLE IF EXISTS players;

      CREATE TABLE players(
      playerID VARCHAR(10) NOT NULL default '',
      birthYear INTEGER default NULL,
      birthMonth INTEGER default NULL,
      birthDay INTEGER default NULL,
      birthCountry VARCHAR(50) default NULL,
      birthState VARCHAR(25) default NULL,
      birthCity VARCHAR(50) default NULL,
      deathYear INTEGER default NULL,
      deathMonth INTEGER default NULL,
      deathDay INTEGER default NULL,
      deathCountry VARCHAR(50) default NULL,
      deathState CHAR(20) default NULL,
      deathCity VARCHAR(50) default NULL,
      nameFirst VARCHAR(50) default NULL,
      nameLast VARCHAR(50) NOT NULL default '',
      nameGiven VARCHAR(255) default NULL,
      weight VARCHAR(3) default NULL,
      height DECIMAL(4,1) default NULL,
      bats VARCHAR(1) default NULL,
      throws VARCHAR(1) default NULL,
      debut DATE default NULL,
      finalGame DATE default NULL,
      retroID VARCHAR(9) default NULL,
      bbrefID VARCHAR(9) default NULL
      );

      DROP TABLE IF EXISTS batters;

      CREATE TABLE batters(
      playerID VARCHAR(9) NOT NULL default '',
      yearID INTEGER NOT NULL default '0',
      stint INTEGER NOT NULL default '0',
      teamID VARCHAR(3) NOT NULL default '',
      lgID VARCHAR(2) NOT NULL default '',
      G INTEGER default NULL,
      AB INTEGER default NULL,
      R INTEGER default NULL,
      H INTEGER default NULL,
      double INTEGER default NULL,
      triple INTEGER default NULL,
      HR INTEGER default NULL,
      RBI INTEGER default NULL,
      SB INTEGER default NULL,
      CS INTEGER default NULL,
      BB INTEGER default NULL,
      SO INTEGER default NULL,
      IBB INTEGER default NULL,
      HBP INTEGER default NULL,
      SH INTEGER default NULL,
      SF INTEGER default NULL,
      GIDP INTEGER default NULL
      );

      DROP TABLE IF EXISTS pitchers;

      CREATE TABLE pitchers(
      playerID VARCHAR(9) NOT NULL default '',
      yearID INTEGER NOT NULL default '0',
      stint INTEGER NOT NULL default '0',
      teamID VARCHAR(3) NOT NULL default '',
      lgID VARCHAR(2) NOT NULL default '',
      W INTEGER default NULL,
      L INTEGER default NULL,
      G INTEGER default NULL,
      GS INTEGER default NULL,
      CG INTEGER default NULL,
      SHO INTEGER default NULL,
      SV INTEGER default NULL,
      IPouts INTEGER default NULL,
      H INTEGER default NULL,
      ER INTEGER default NULL,
      HR INTEGER default NULL,
      BB INTEGER default NULL,
      SO INTEGER default NULL,
      BAOpp DECIMAL(5,3) default NULL,
      ERA DECIMAL(5,2) default NULL,
      IBB INTEGER default NULL,
      WP INTEGER default NULL,
      HBP INTEGER default NULL,
      BK INTEGER default NULL,
      BFP INTEGER default NULL,
      GF INTEGER default NULL,
      R INTEGER default NULL,
      SH INTEGER default NULL,
      SF INTEGER default NULL,
      GIDP INTEGER default NULL
      );

      DROP TABLE IF EXISTS teams;

      CREATE TABLE teams(
      yearID INTEGER NOT NULL default '0',
      lgID VARCHAR(2) NOT NULL default '',
      teamID VARCHAR(3) NOT NULL default '',
      franchID VARCHAR(3) NOT NULL default 'UNK',
      divID VARCHAR(1) default NULL,
      Rank INTEGER NOT NULL default '0',
      G INTEGER default NULL,
      Ghome INTEGER default NULL,
      W INTEGER default NULL,
      L INTEGER default NULL,
      DivWin VARCHAR(1) default NULL,
      WCWin VARCHAR(1) default NULL,
      LgWin VARCHAR(1) default NULL,
      WSWin VARCHAR(1) default NULL,
      R INTEGER default NULL,
      AB INTEGER default NULL,
      H INTEGER default NULL,
      double INTEGER default NULL,
      triple INTEGER default NULL,
      HR INTEGER default NULL,
      BB INTEGER default NULL,
      SO INTEGER default NULL,
      SB INTEGER default NULL,
      CS INTEGER default NULL,
      HBP INTEGER default NULL,
      SF INTEGER default NULL,
      RA INTEGER default NULL,
      ER INTEGER default NULL,
      ERA DECIMAL(4,2) default NULL,
      CG  INTEGER default NULL,
      SHO  INTEGER default NULL,
      SV  INTEGER default NULL,
      IPouts INTEGER default NULL,
      HA INTEGER default NULL,
      HRA INTEGER default NULL,
      BBA INTEGER default NULL,
      SOA INTEGER default NULL,
      E INTEGER default NULL,
      DP INTEGER default NULL,
      FP DECIMAL(5,3) default NULL,
      name VARCHAR(50) NOT NULL,
      park VARCHAR(255) default NULL,
      attendance INTEGER default NULL,
      BPF INTEGER default NULL,
      PPF INTEGER default NULL,
      teamIDBR VARCHAR(3) default NULL,
      teamIDlahman45 VARCHAR(3) default NULL,
      teamIDretro VARCHAR(3) default NULL
      );
    SQL

  end
end
