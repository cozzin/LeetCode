/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var left = l1
        var right = l2
        var head: ListNode?
        var current: ListNode?
        var overedValue: Int = 0
        
        while left != nil || right != nil || overedValue != 0 {
            let sum = (left?.val ?? 0) + (right?.val ?? 0) + overedValue
            let value = sum % 10
            overedValue = Int(sum / 10)
            
            let node = ListNode(value)
            
            if head == nil {
                head = node
            } else {
                current?.next = node
            }
            
            current = node

            left = left?.next
            right = right?.next
        }
        
        return head
    }
}
