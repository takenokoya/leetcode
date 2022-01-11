# @param {Integer} n
# @return {Integer[]}
def get_no_zero_integers(n)
  (1..n/2).find do |x|
    !x.to_s.include?('0'.freeze) &&
      !(n - x).to_s.include?('0'.freeze)
  end.yield_self { |x| [x, n - x] }
end

# https://leetcode.com/problems/convert-integer-to-the-sum-of-two-no-zero-integers
