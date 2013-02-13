require 'test_helper'
require 'hostsan/triangle'
class TestTriangle < Test::Unit::TestCase
 
  def test_is_regular_triangle
    assert_equal(Triangle.determine(3, 3, 3), "正三角形です")
  end
 
end
