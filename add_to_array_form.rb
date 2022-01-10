# @param {Integer[]} num
# @param {Integer} k
# @return {Integer[]}
def add_to_array_form(num, k)
  sum = num.join.to_i + k
  sum.to_s.split('').map(&:to_i)
end

# digitsメソッドを使う場合
# 123.digits => [3, 2, 1]
def add_to_array_form(num, k)
  sum = num.join.to_i + k
  sum.digits.reverse
end
