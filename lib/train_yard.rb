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
    end.flatten.uniq
    y.sort_by do |type|
      type
    end
  end

  def total_inventory
    inv = Hash.new(0)
    @trains.each do |train|
      train.cargo.each do |car, quantity|
        inv[car] += quantity
      end
    end
    inv
  end

  def overflow_cars
    #find all cars that are pulled by more than one train and
    #return car if car amount exceeds 10
  end
end
