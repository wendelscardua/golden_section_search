RSpec.describe GoldenSectionSearch do
  let(:convex_function) do
    proc { |x| (x - 7)**2 }
  end

  let(:concave_function) do
    proc { |x| -(x + 4)**2 }
  end

  let(:tolerance) { 0.00001 }

  describe '#find_minimum' do
    it 'returns the input value for which the funcion value is the minimum' do
      minimum = described_class.find_minimum(convex_function, 0.0, 20.0, tolerance)
      expect((minimum - 7.0).abs).to be < tolerance
    end
  end

  describe '#find_maximum' do
    it 'returns the input value for which the funcion value is the maximum' do
      maximum = described_class.find_maximum(concave_function, -20.0, 20.0, tolerance)
      expect((maximum - -4.0).abs).to be < tolerance
    end
  end
end
