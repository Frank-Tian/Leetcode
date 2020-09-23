//
//  main.swift
//  169.多数元素
//
//  Created by Tian on 2020/9/23.
//

import Foundation

//给定一个大小为 n 的数组，找到其中的多数元素。多数元素是指在数组中出现次数大于 ⌊ n/2 ⌋ 的元素。
//你可以假设数组是非空的，并且给定的数组总是存在多数元素。
//链接：https://leetcode-cn.com/problems/majority-element

//这种题的解法有很多种
//投票法核心思想：把众数记为 +1+1，把其他数记为 -1−1，
//将它们全部加起来，显然和大于 0，从结果本身我们可以看出众数比其他数多
class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var m = nums[0]
        var c = 1
        for i in 1..<nums.count {
            let t = nums[i]
            if c == 0 {
                m = t
            }
            if m == t {
                c += 1
            } else {
                c -= 1
            }
        }
        return m
    }
}

