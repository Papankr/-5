require '/Users/tenzy/Desktop/5func.rb'
require 'minitest/autorun'
# Tests
class Test < Minitest::Test
  def test_1
    z = 1
    r = -1.347
    assert_in_delta(r, func(z), 0.001)
  end
  
  def test_2
    z = 10
    r = -17_928.848
    assert_in_delta(r, func(z), 0.001)
  end
end
