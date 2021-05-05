RSpec.describe '#even? method' do
  #it 'shoud return true if number is even'
  #it 'should return false if number is odd'
  
  context 'with even number' do
    it 'should return true' do
      expect(4.even?).to eq(true)
    end
  end

  context 'with even number' do
    it 'should return false' do
      expect(5.even?).to eq(false)
    end
  end
end