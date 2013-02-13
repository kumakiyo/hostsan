# coding: utf-8
require 'test_helper'
require 'hostsan/triangle'
class TestTriangle < Test::Unit::TestCase
 
  def test_is_regular_triangle
    assert_equal(Triangle.determine(3, 3, 3), "正三角形です")
  end
 
  def test_is_isosceles_triangle
    assert_equal(Triangle.determine(5, 3, 3), "二等辺三角形です")
  end

  def test_is_triangle
    assert_equal(Triangle.determine(4, 3, 2), "三角形です")
  end

  def test_is_not_triangle_1
    assert_equal(Triangle.determine(4, 2, 2), "三角形になりません")
  end

  def test_is_not_triangle_2
    assert_equal(Triangle.determine(4, 2, 0), "三角形になりません")
  end

  def test_is_not_triangle_3
    assert_equal(Triangle.determine(-4, 2, 5), "三角形になりません")
  end
end
