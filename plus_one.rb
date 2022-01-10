# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
  number = 0
  digits.reverse.each_with_index do |n, i|
    number += n * (10 ** i)
  end
  (number + 1).to_s.split('').map(&:to_i)
end

# 実行時間の成績があまり良くないので改善できそう
# ワンライナー
def plus_one(digits)
  (digits.join.to_i + 1).to_s.split('').map(&:to_i)
end
