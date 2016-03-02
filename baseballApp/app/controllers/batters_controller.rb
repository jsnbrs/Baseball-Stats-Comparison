class BattersController < ApplicationController
  def index
    @batters = Batter.all
    @pitchers = Pitcher.all
  end
end
