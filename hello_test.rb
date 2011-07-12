require 'test/unit'
require 'hello'

class HelloTest < Test::Unit::TestCase
  def setup
    @hello = Hello.new
  end
  
  def test_sum
    expected = 6
    actual = @hello.sum(1,2,3)
    assert_equal expected, actual
  end
  
  def test_sum2
    expected = 0
    actual = @hello.sum()
    assert_equal expected, actual
  end

  def test_average
    expected = 2
    actual = @hello.average(1,2,3)
    assert_equal expected, actual
  end
  
  def test_product
    expected = 6
    actual = @hello.product(1,2,3)
    assert_equal expected, actual
  end
end
