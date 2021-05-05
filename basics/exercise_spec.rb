RSpec.describe Array do
  subject do
     [1, 2] 
  end
  it 'should be equal to the main array' do
    expect(subject).to eq([1, 2])
  end
  it { is_expected.to eq([1, 2]) } 
end