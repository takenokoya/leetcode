# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  sum = 0
  current = l1
  index = 0
  while current
    sum += current.val * (10 ** index)
    index += 1
    current = current.next
  end

  current = l2
  index = 0
  while current
    sum += current.val * (10 ** index)
    index += 1
    current = current.next
  end
  sum.digits
end

# https://leetcode.com/problems/add-two-numbers
