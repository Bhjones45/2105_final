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
end
