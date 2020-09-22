class ConsumeMoneyController < ApplicationController

  def index
    @consume = Consumption.all
  end

  def create
    @consume = Consumption.save
  end

end
