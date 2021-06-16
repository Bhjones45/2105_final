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
      type.uniq
    end
  end

  # def trains_containing(car)
  #
  # end
end
