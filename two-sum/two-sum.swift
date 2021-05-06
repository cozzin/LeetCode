class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict: [Int: Int] = [:]

        for (i, num) in nums.enumerated() {
            // target - num = 해당값 찾기
            // 문제가 요구하는 num + 해당값 = target이 됨
            if let index = dict[target - num] {
                return [index, i]
            }

            // 배열을 전진하면서 탐색하기 때문에
            // 나중에 검색될 수 있게 딕셔너리에 넣어줘야 함
            dict[num] = i
        }

        return []
    }
}
