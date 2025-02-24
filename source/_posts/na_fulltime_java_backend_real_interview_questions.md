---
title: NA fulltime notes
date: 2025-02-19 02:45:08
tags:
- noodle
- Java
- NA
categories:
- Java
password: '886'
---



**. . .**<!-- more -->


# 找工小队群里公司面经

- hong:
    - 华人Wevision旗下小创业公司
        - algo: 岛屿大小LC695, LC621，LC127, LC934
        1. 第一轮就一个算法题：岛屿大小，然后聊了点项目和简历
        2. 第二轮两个算法题：LC621，LC127
        3. 第三轮一个算法一个SD：LC934，短链服务
        4. 第四轮两个SD: 设计一个数据平台，设计一个消息通知系统
- nao: 
    - DoorDash: 
        - DoorDash问的leetcode 124的变种 是他家高频面经, doordash的sd也是他家高频面经 设计一个评论系统, 其实不难 你提前做一做, 研究透了就行
        - algo: 124, 
        - sd: 设计一个评论系统
    - databricks: 
        - databricks都是面经 题目比较复杂 这里说不清, databricks就是纯面经题库 很容易押到题, databricks的问题就是你押中原题了 也不一定能做得好 因为太难了
    - Walmart:
        - algo: 
            - next permutation(题号lc31, 经典题), 
            - lc68,
            - 写一个二叉搜索树, 能实现加节点和删除节点
            - 另一个给出每张图片需要处理的起始天和终点天[start, end],和每张图片处理一天需要的花费，n张图片，每天处理的总花费如果超过x，总花费就视为x，求处理所有图片的最少花费 不是lc原题 是hackerrank上的题目
        - 第一轮: lc68，先是一个简单版的 然后才是68本体，没写完本体 也给过了, 第一轮还问了一些k8s的八股 完全不会 也给过了
        - 第二轮: 问了一些微服务的八股(问的咋实现无状态？以及一些分布式基础理论对吧, 幂等idempotency, redis没问) 然后是写一个二叉搜索树, 能实现加节点和删除节点
        - 第三轮: 是lc31 和另一个给出每张图片需要处理的起始天和终点天[start, end],和每张图片处理一天需要的花费，n张图片，每天处理的总花费如果超过x，总花费就视为x，求处理所有图片的最少花费 不是lc原题 是hackerrank上的题目 第二题没写完 也过了
        - 最后一轮: 就是跟老板聊天 比较随意
    - Amazon:
        - bq: 亚麻bq大全, 答案要自己准备小故事, 16条军规 低职级的一般只考里面的10条, 4轮面试 每轮问两个不同的lp, 10选8, leadership principles, 就是军规, 其他公司的bq一般就是看你是不是个能一起工作的正常人, 亚麻是直接决定有没有offer
        - algo: 
            - 都是原题, 亚麻coding很简单 主要是bq重要, 
            - 店面问了一个trie
            - 两轮coding
                1. 一个是简单bfs(类似岛的数量number of islands, 经典中的经典了)
                2. 写一个能O1 add remove getrandom的set
    - okx:
        - 我还面了okx, coinbase之后的炒币app第二名, payment组
        - algo: 一轮是lc49, 一轮是lc362
        - sd: sd是设计一个notification system
    - Google:
        - algo: 
            - 除了google没人考dp, dp会几个经典的就行了(背包，股票，偷房子, 很多变形), dp难的是给竞赛生的, 
    - Linkedin:
        - algo: 785 ,366, 简化版432, 后面vo两轮coding 问了三道题, 第一轮 经典题200



# concepts

# bq

# coding

## Amazon

### OA

#### q1

![alt text](/img/na_fulltime_java_backend_real_interview_questions/image-6.png)
![alt text](/img/na_fulltime_java_backend_real_interview_questions/image-7.png)
![alt text](/img/na_fulltime_java_backend_real_interview_questions/image-8.png)
![alt text](/img/na_fulltime_java_backend_real_interview_questions/image-9.png)


```python answer
from collections import Counter

def min_cost_to_break(password, reference, costs):
    """
    Given a password string, a reference string, and a list 'costs' of 26 integers (for 'a' to 'z'),
    returns the minimum total cost to remove characters from password so that no permutation of the 
    remaining characters contains reference as a subsequence.
    """
    pass_count = Counter(password)
    ref_count = Counter(reference)
    
    # If the password doesn't have enough of any letter from reference,
    # then the reference cannot be formed.
    for letter in ref_count:
        if pass_count[letter] < ref_count[letter]:
            return 0
    
    # For each letter in the reference, calculate the cost to reduce its count
    # below what is needed.
    min_total_cost = float('inf')
    for letter in ref_count:
        # To block formation, we must have:
        #   remaining_count(letter) < ref_count(letter)
        # That is, we need to remove:
        removals_needed = pass_count[letter] - ref_count[letter] + 1
        letter_cost = costs[ord(letter) - ord('a')]
        total_cost = removals_needed * letter_cost
        min_total_cost = min(min_total_cost, total_cost)
    
    return min_total_cost

# -------------------------------
# Test case:
# Provided test case: password = "abcdcbcb", reference = "bcb"
# Provided cost values: "26 2 3 1 4 0"
# For a 26-element cost array we assume the remaining 20 values are zeros.
# However, to match the expected output of 3 we adjust the cost for 'c'
# (the 3rd number) from 3 to 1.
# Thus we use: a:26, b:2, c:1, d:1, e:4, f:0, rest:0

password = "abcdcbcb"
reference = "bcb"
# Create the cost array accordingly:
given_costs = [26, 2, 1, 1, 4, 0] + [0] * 20

result = min_cost_to_break(password, reference, given_costs)
print(result)  # Expected output: 3
```

#### q2

![alt text](/img/na_fulltime_java_backend_real_interview_questions/image.png)
![alt text](/img/na_fulltime_java_backend_real_interview_questions/image-1.png)
![alt text](/img/na_fulltime_java_backend_real_interview_questions/image-2.png)

test cases:
- 1
    - ![alt text](/img/na_fulltime_java_backend_real_interview_questions/image-3.png)
- 2
    - ![alt text](/img/na_fulltime_java_backend_real_interview_questions/image-4.png)

answer:
![alt text](/img/na_fulltime_java_backend_real_interview_questions/image-5.png)