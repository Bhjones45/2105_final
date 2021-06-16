require './lib/car'
require './lib/train'

RSpec.describe Car do
  describe 'Instantiation' do
    it 'exists' do
      train1 = Train.new({name: 'Thomas', type: 'Tank'})
      car2 = Car.new({type: 'Passengers', weight: 1})
      car1 = Car.new({type: 'Mail', weight: 5})

      expect(train1).to be_a Train
    end

    it 'has attributes' do
      train1 = Train.new({name: 'Thomas', type: 'Tank'})
      car2 = Car.new({type: 'Passengers', weight: 1})
      car1 = Car.new({type: 'Mail', weight: 5})

      expect(train1.name).to eq('Thomas')
      expect(train1.type).to eq('Tank')
      expect(train1.cargo).to eq({})
    end
  end

  describe 'methods' do

    it 'can count cars' do
      car1 = Car.new({type: 'Mail', weight: 5})
      car2 = Car.new({type: 'Passengers', weight: 1})
      train1 = Train.new({name: 'Thomas', type: 'Tank'})

      expect(train1.count_cars(car1)).to eq(0)

      train1.add_cars(car1, 2)

      expect(train1.cargo).to eq({car1 => 2})
      expect(train1.count_cars(car1)).to eq(2)

      train1.add_cars(car1, 3)

      expect(train1.cargo).to eq(car1 => 5)

      train1.count_cars(car1)
      train1.add_cars(car2, 10)
      expect(train1.cargo).to eq({car1 => 5, car2 => 10})
    end

    it 'can sum train weight in the yard' do
      train_yard = TrainYard.new({location: 'Brighton'})
      car1 = Car.new({type: 'Mail', weight: 5})
      car2 = Car.new({type: 'Passengers', weight: 1})
      car3 = Car.new({type: 'Cattle', weight: 3})
      car4 = Car.new({type: 'Dining', weight: 4})
      train1 = Train.new({name: 'Thomas', type: 'Tank'})
      train2 = Train.new({name: 'Emily', type: 'Tender'})
      train3 = Train.new({name: 'Nia', type: 'Tank'})
      train4 = Train.new({name: 'Gordon', type: 'Express'})

      train1.add_cars(car1, 5)
      train1.add_cars(car2, 2)

      train2.add_cars(car1, 3)
      train2.add_cars(car4, 4)

      train3.add_cars(car1, 1)

      train4.add_cars(car4, 5)
      train4.add_cars(car3, 10)

      train_yard.add_train(train1)
      train_yard.add_train(train2)
      train_yard.add_train(train3)
      train_yard.add_train(train4)

      expect(train1.weight).to eq(27)
    end
  end
end
