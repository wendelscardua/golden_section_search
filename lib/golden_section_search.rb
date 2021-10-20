require "golden_section_search/version"

module GoldenSectionSearch
  GOLDEN_RATIO = (Math.sqrt(5) + 1) / 2

  def self.find_minimum(function, left_value, right_value, tolerance = 1.0e-5)
    middle_left_value = right_value - (right_value - left_value) / GOLDEN_RATIO
    middle_right_value = left_value + (right_value - left_value) / GOLDEN_RATIO
    while (right_value - left_value).abs > tolerance do
      if function.call(middle_left_value) < function.call(middle_right_value)
        right_value = middle_right_value
      else
        left_value = middle_left_value
      end
      middle_left_value = right_value - (right_value - left_value) / GOLDEN_RATIO
      middle_right_value = left_value + (right_value - left_value) / GOLDEN_RATIO
    end

    (left_value + right_value) / 2
  end
end
