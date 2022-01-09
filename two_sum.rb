# ブルートフォース
# 時間超過で失敗する良い例
def two_sum(nums, target)
  nums.each_with_index do |n1, i1|
    nums.each_with_index do |n2, i2|
      next if i1 == i2
      if n1 + n2 == target
        return [i1, i2]
      end
    end
  end
end

# ハッシュマップ
def two_sum(nums, target)
  h = {}
  nums.each_with_index { |n1, i1| h[n1] = i1 }

  nums.each_with_index do |n2, i2|
    tmp = target - n2
    next if h[tmp].nil? || i2 == h[tmp]
    return [h[tmp], i2]
  end
end

