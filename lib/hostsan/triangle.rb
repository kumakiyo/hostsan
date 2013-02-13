# coding: utf-8

require 'pp'
module Hostsan
  # 三角形
  module Triangle
    # 三角形の辺の長さを引数にとり、
    # 「正三角形です」「二等辺三角形です」
    # 「三角形です」「三角形になりません」のどれかを返す
    # ※puts するのではなくて、return (相当) でOK!
    def self.determine(side1, side2, side3)
      array = [side1, side2, side3]
      
      array.sort!
      if array[0] + array[1] <= array[2]
        return "三角形になりません"
      else
        return "正三角形です" if array.uniq.size == 1
        return "二等辺三角形です" if array.uniq.size == 2
        return "三角形です"
      end
    end
  end
end
