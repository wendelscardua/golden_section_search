RSpec.describe GoldenSectionSearch do
  it "has a version number" do
    expect(GoldenSectionSearch::VERSION).not_to be nil
  end

  let(:function) do
    proc { |x| (x - 7)**2 }
  end

  let(:tolerance) { 0.00001 }

  describe '#find_minimum' do
    it 'returns the input value for which the funcion value is the minimum' do
      minimum = described_class.find_minimum(function, 0.0, 20.0, tolerance)
      expect((minimum - 7.0).abs).to be < tolerance
    end
  end
end
