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

  def types_of_trains
    x = @trains.map do |train|
      train.type
    end
    x.sort_by do |type|
      type
    end.uniq
  end

  def trains_containing(car)
    @trains.find_all do |train|
      train.cargo.include?(car)
    end
  end

  def sorted_cargo_list
    y = @trains.map do |train|
      train.cargo.map do |car, number|
      car.type
    end
    require "pry"; binding.pry
    end
  end
end
