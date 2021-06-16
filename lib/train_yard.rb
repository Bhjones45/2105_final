class TrainYard
  attr_reader :location,
              :trains

  def initialize(info)
    @location = info[:location]
    @trains = []
  end

  def add_train(train)
    @trains << train
  end

  def weight
    @trains.map do ||
      train.cargo
    end
    require "pry"; binding.pry
  end
end
