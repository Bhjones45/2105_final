require './lib/car'
require './lib/train'

RSpec.describe Car do
  describe 'Instanition' do
    it 'exists' do
      car1 = Car.new({type: 'Mail', weight: 5})

      expect(car1).to be_a(Car)
    end

    it 'has attributes' do
      car1 = Car.new({type: 'Mail', weight: 5})

      expect(car1.type).to eq('Mail')
      expect(car1.weight).to eq(5)
    end
  end
end
