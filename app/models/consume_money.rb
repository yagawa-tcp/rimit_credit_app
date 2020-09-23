class ConsumeMoney < ApplicationRecord

  def index
    @consume = Consumption.all
  end

  def create
    @consume = Consumption.save
  end
end
