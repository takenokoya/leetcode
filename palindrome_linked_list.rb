# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {Boolean}
def is_palindrome(head)
  stack = []
  queue = []
  current = head
  while current # currentがnilになるまで繰り返し
    stack.unshift(current.val)
    queue.push(current.val)
    current = current.next
  end
  stack == queue
end

# https://leetcode.com/problems/palindrome-linked-list/
