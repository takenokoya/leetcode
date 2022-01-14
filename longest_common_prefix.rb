# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  return strs[0] if strs.length == 1
  strs = strs.sort_by(&:length)
  remain = strs.drop(1)
  strs[0].length.downto(1) do |i|
    prefix = strs[0][0, i]
    next unless remain.all? { |str| str.start_with?(prefix) }
    return prefix
  end
  ""
end

# https://leetcode.com/problems/longest-common-prefix
