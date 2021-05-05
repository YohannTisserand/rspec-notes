RSpec.describe 'include matcher' do
  describe 'hot chocolate' do
    it 'checks for substring inclusion' do
      expect(subject).to include('hot')
      expect(subject).to include('choc')
      expect(subject).to include('late')
    end
    it { is_expected.to include('choc') }
  end

  describe [10, 20, 30] do
    it 'checks for inclusion in the array, regardless of the order' do
      expect(subject).to include(10)
      expect(subject).to include(10, 20)
    end

    it { is_expected.to include(20, 30) }
  end

  describe ({ a: 2, b: 4}) do
    it 'can check for a key exitence' do
      expect(subject).to include(:a, :b)
    end

    it 'can check for a key, value pair as well' do
      expect(subject).to include(a: 2)
    end
  end

end