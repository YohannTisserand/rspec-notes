RSpec.describe 'start_with and end_with matchers' do
  describe 'caterpillar' do
    it 'should check for substring at the beginning or end' do
      expect(subject).to start_with('cat')
      expect(subject).to end_with('pillar')
    end

    it { is_expected.to start_with('cat') } 
  end

  describe [:a, :b, :c, :d] do
    it 'should check for elements at the begin or end' do
      expect(subject).to start_with(:a)
      expect(subject).to start_with(:a, :b, :c)
    end

    it { is_expected.to start_with(:a) }
  end
end