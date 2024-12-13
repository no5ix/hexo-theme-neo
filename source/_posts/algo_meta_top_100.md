---
title: Algo Meta Top 100
date: 2024-12-04 22:55:08
tags:
- noodle
- Algo
- LeetCode
categories:
- Algo
password: '0622'
---


# 找工小队群里公司面经

- hong:
    - 华人Wevision旗下小创业公司
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
        - algo: next permutation(题号30几, 经典题), 
    - Amazon:
        - bq: 亚麻bq大全, 答案要自己准备小故事, 16条军规 低职级的一般只考里面的10条, 4轮面试 每轮问两个不同的lp, 10选8, leadership principles, 就是军规, 其他公司的bq一般就是看你是不是个能一起工作的正常人, 亚麻是直接决定有没有offer
        - algo: 
            - 都是原题, 亚麻coding很简单 主要是bq重要, 
            - 店面问了一个trie
            - 两轮coding
                1. 一个是简单bfs(类似岛的数量number of islands, 经典中的经典了)
                2. 写一个能O1 add remove getrandom的set
    - okx:
        - 我还面了okx coinbase之后的炒币app第二名, payment组
        - algo: 一轮是lc49 一轮是lc362
        - sd: sd是设计一个notification system
    - Google:
        - algo: 
            - 除了google没人考dp, dp会几个经典的就行了(背包，股票，偷房子, 很多变形), dp难的是给竞赛生的, 


# Meta面经1

补充内容 (2024-09-11 09:55 +08:00):    
今天面完了5轮onsite，3 coding + bq+ sd，下面是面试前我自己整理的地理面经（3月到现在），onsite和电面的题目全在里面。如果时间不多，1～2个月内就面试，你看这一个帖子差不多就够了
面senior的别担心算法，出的题目都是看一眼就知道答案。几年前拿过meta offer，当时还被面了2轮hard，现在算法要求降低很多。


## algo

算法题目，下面是leetcode题号:     
- 1 - 100: 7, 19, 21, 23, 26,  31, 34, 39, 43, 50, 56, 60, 62, 65, 71, 76, 79, 88
- 101 - 200: 116, 121, 125, 127, 129, 133, 138, 140, 146, 162, 190, 199, 200
- 201 - 400: 207, 210, 215, 219, 224, 227, 236, 249, 266, 283, 295, 301, 314, 317, 332, 339(不是给List，而是给字符串，可以用stack解题), 346, 347, 380
- 401 - 1000: 408, 426, 435, 437, 438, 443, 447, 494, 499, 523, 528, 543, 560, 658, 680, 721, 739(单调栈的典型应用 www.geeksforgeeks.org), 791, 827, 934, 938, 973, 986, 987
- Above 1000: 1004, 1047, 1060, 1091, 1123, 1161, 1209, 1216, 1249, 1382, 1539, 1570, 1644, 1650, 1762, 1778

## sd

1. Design a chess game, 要求可以撤回上一步
2. 游戏leaderboard，需要有global&friends排名。这题准备过 但是面试官侧重点是怎么去sort我是没想到的
    1. 需要返回当前整个游戏的top N player、当前用户的前后N个player
    2. 返回当前用户朋友的top N player、当前用户朋友的前后N个player
3. Hacker version Web crawler
4. 有一些限定条件，比如说一万台机器，尽可能让每台机器的load evenly distributed。
5. Design an Ads Aggregation System (广告点击)
6. facebook 評論系統: user1 看到某個post1, user1 write comment, user2 看到post2, write comment, 同時要通知user1
7. design zoom
8. Design instagram
9.  Design ig auction: 设计一个auction system。 用户可以view current bid price 然就可以bid with higher price。 主要问了如果bid at same‍‍‌‍‍‍‍‌‌‌‍‌‍‌‍‍‍‌‍‌ price 怎么解决conflict。以及怎么scale一个很hot的auction。
10. ig newsfeed, 怎么处理new post来通知用户的情况
11. design dropbox. 全程drive对话，自己说哪里是bottleneck，如何解决，面试官的问题都回答上了，后期dive in主要着重于how to chunk large file in detail, get updated file list 的时候如何提高performance，get updated file list的时候有什么edge case吗，如何解决。面试官最后looking very good。
12. 设计一个抢票系统
13. trending hashtags: Top K 问题
14. 设计post的隐私设置
15. proximity service
16. price tracker
17. design camel camel camel
18. Ticketmaster
19. deep dive facebook news feed API 包括pagination.. 如何实现at一个人等
20. design Spotify
21. Design hotel booking system.
22. 设计一个streaming service: 需要支持video play、recommendation、subscription
23. Presence indicator
24. 设计google map中，选择一个地点，可以拖拽看到周围街景的那个功能。主要问了问怎么hash longtitude/latitude，看看alex xu绿皮书Google map那一章会有帮助。‍‍‌‍‍‍‍‌‌‌‍‌‍‌‍‍‍‌‍‌以及如何降低latency，如何存储image等等。
25. metrics monitoring
26. youtube
27. LeetCode contest platform



## bq

1. conflict with others, xfn conflict
2. biggest mistake
3. have you ever broke prod code
4. most proud project
5. difficult working re‍‍‌‍‍‍‍‌‌‌‍‌‍‌‍‍‍‌‍‌lationship
6. conflict when you are right, conflict when you are wrong
7. feedback from mana‍‍‌‍‍‍‍‌‌‌‍‌‍‌‍‍‍‌‍‌ger: negative feedback, critical feedback you received
8. What did you learn from your tech lead, what do you want to improve?
9. 多个task同时进行的时候怎么协调


# Meta Tag Algorithm Problems Top 100

Reference:    
- https://productive-horse-bb0.notion.site/Meta-2021-11-2022-2-3052cadfe0584f8fbda57c86a56663fe?p=46de9980e1d44c41ae81f87e2a9aadc7&pm=s
- https://www.notion.so/1557653f2b3080d69303d3eae198d88c?v=1557653f2b3081d7b483000c06e42acf


## Binary Tree

### lc1650 - Medium - Lowest Common Ancestor of a Binary Tree III - freq76 - rank7

Description: 
    
Given two nodes of a binary tree `p` and `q`, return *their lowest common ancestor (LCA)*.

Each node will have a reference to its parent node. The definition for `Node` is below:

``` java
class Node {
    public int val;
    public Node left;
    public Node right;
    public Node parent;
}
```

According to the [**definition of LCA on Wikipedia**](https://en.wikipedia.org/wiki/Lowest_common_ancestor): "The lowest common ancestor of two nodes p and q in a tree T is the lowest node that has both p and q as descendants (where we allow **a node to be a descendant of itself**)."

**Example 1:**
![alt text](/img/algo_meta_top_100/image-1.png)
!https://assets.leetcode.com/uploads/2018/12/14/binarytree.png

```
Input: root = [3,5,1,6,2,0,8,null,null,7,4], p = 5, q = 1
Output: 3
Explanation: The LCA of nodes 5 and 1 is 3.

```

**Example 2:**
![alt text](/img/algo_meta_top_100/image-2.png)
!https://assets.leetcode.com/uploads/2018/12/14/binarytree.png

```
Input: root = [3,5,1,6,2,0,8,null,null,7,4], p = 5, q = 4
Output: 5
Explanation: The LCA of nodes 5 and 4 is 5 since a node can be a descendant of itself according to the LCA definition.

```

**Example 3:**

```
Input: root = [1,2], p = 1, q = 2
Output: 1

```

**Constraints:**

- The number of nodes in the tree is in the range `[2, 105]`.
- `109 <= Node.val <= 109`
- All `Node.val` are **unique**.
- `p != q`
- `p` and `q` exist in the tree.


Solution: 

``` java
// - 其实就变成求两条链表的相交点了, refer to : https://programmercarl.com/面试题02.07.链表相交.html#其他语言版本
// - Two runners and circle track,  same as leetcode-160: https://leetcode.com/problems/intersection-of-two-linked-lists/description/
public Node lowestCommonAncestor(Node p, Node q) {
	Node a = p, b = q;
	while (a != b) {
		a = a == null? q : a.parent;
		b = b == null? p : b.parent;    
	}
	return a;
}
```

### DFS

#### lc263 - Medium - Lowest Common Ancestor of a Binary Tree - freq63 - rank14

- https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-tree/description/
- https://programmercarl.com/0236.二叉树的最近公共祖先.html#算法公开课


#### lc129 - Medium - Sum Root to Leaf Numbers - freq34 - rank29

- https://leetcode.com/problems/sum-root-to-leaf-numbers/
- https://programmercarl.com/0257.二叉树的所有路径.html#其他语言版本



### BFS

#### lc314 - Medium - Binary Tree vertical order traversal - freq137

- https://leetcode.com/problems/binary-tree-vertical-order-traversal/description/
- https://productive-horse-bb0.notion.site/Meta-2021-11-2022-2-3052cadfe0584f8fbda57c86a56663fe?p=46de9980e1d44c41ae81f87e2a9aadc7&pm=s
- hint: BFS; queue and map with col number
- complexity: O(n)

Given the root of a binary tree, return the vertical order traversal of its nodes' values. (i.e., from top to bottom, column by column).

If two nodes are in the same row and column, the order should be from left to right.

Example 1:

Input: root = [3,9,20,null,null,15,7]
Output: [[9],[3,15],[20],[7]]
Example 2:


Input: root = [3,9,8,4,0,1,7]
Output: [[4],[9],[3,0,1],[8],[7]]
Example 3:


Input: root = [3,9,8,4,0,1,7,null,null,null,2,5]
Output: [[4],[9,5],[3,0,1],[8,2],[7]]
 
![alt text](/img/algo_meta_top_100/image.png)

Constraints:

The number of nodes in the tree is in the range [0, 100].
-100 <= Node.val <= 100


Solution: 

``` java
// - BFS level order traversal, time O(N), space O(N)
    
//     Observation:
    
//     - The column range is continuous, from min to max
    
//     Steps
    
//     - BFS, put `node`, `col` into queue at the same time
//     - Every left child access `col - 1` while right child `col + 1`
//     - This maps `node` into different `col` buckets
//     - Get `col` boundary `min` and `max` on the fly
//     - Retrieve `result` from `cols`

import java.util.Map;
import java.util.Queue;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Arrays;
import java.util.ArrayList;

class TreeNode {
    int val;
    TreeNode left;
    TreeNode right;

    TreeNode() {}
    TreeNode(int val) { this.val = val; }
    TreeNode(int val, TreeNode left, TreeNode right) {
        this.val = val;
        this.left = left;
        this.right = right;
    }
}

class Solution {

    public static List<List<Integer>> verticalOrder(TreeNode root) {
        List<List<Integer>> resultList = new ArrayList<>();
        if (root == null) {
            return resultList;
        }

        Map<Integer, List<Integer>> colToVals = new HashMap<>();
        Queue<TreeNode> nodeQueue = new ArrayDeque<>();
        Queue<Integer> colQueue = new ArrayDeque<>();
        nodeQueue.offer(root);
        colQueue.offer(0);

        int minColIndex = 0;
        int maxColIndex = 0;
        while (!nodeQueue.isEmpty()) {
            TreeNode tempNode = nodeQueue.poll();
            int curCol = colQueue.poll();

            if (colToVals.containsKey(curCol)) {
                List<Integer> curVals = colToVals.get(curCol);
                curVals.add(tempNode.val);
            } else {
                List<Integer> newVals = new ArrayList<>();
                newVals.add(tempNode.val);
                colToVals.put(curCol, newVals);
            }

            // update min, max cols and add current value to corresponding column's list
            minColIndex = Math.min(curCol, minColIndex);
            maxColIndex = Math.max(curCol, maxColIndex);

            // add children for level order traversal
            if (tempNode.left != null) {
                nodeQueue.offer(tempNode.left);
                colQueue.offer(curCol - 1);
            }
            if (tempNode.right != null) {
                nodeQueue.offer(tempNode.right);
                colQueue.offer(curCol + 1);
            }
        }

        // build result
        for (int i = minColIndex; i <= maxColIndex; i++) {
            resultList.add(colToVals.get(i));
        }

        return resultList;
    }

    public static void main(String[] args) {
        TreeNode testTree = new TreeNode(3);
        testTree.left = new TreeNode(9);
        testTree.right = new TreeNode(20);
        testTree.right.left = new TreeNode(15);
        testTree.right.right = new TreeNode(7);
        List<List<Integer>> result = verticalOrder(testTree);
        System.out.println(result);

    }
}
```


#### lc199 - Medium - Binary Tree Right Side View - freq49

- https://leetcode.com/problems/binary-tree-right-side-view/description/
- https://programmercarl.com/0102.二叉树的层序遍历.html#_199-二叉树的右视图

``` java
/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     int val;
 *     TreeNode left;
 *     TreeNode right;
 *     TreeNode() {}
 *     TreeNode(int val) { this.val = val; }
 *     TreeNode(int val, TreeNode left, TreeNode right) {
 *         this.val = val;
 *         this.left = left;
 *         this.right = right;
 *     }
 * }
 */
class Solution {
    public List<Integer> rightSideView(TreeNode root) {
        List<Integer> resultList = new ArrayList<Integer>();
        if (root == null ) {
            return resultList;
        }
        Queue<TreeNode> que = new LinkedList<TreeNode>();
        que.offer(root);

        while (!que.isEmpty()) {
            int len = que.size();
            while (len > 0) {  // 注意这个len, 这里一定要使用固定大小 len，不要使用que.size()，因为que.size是不断变化的
                TreeNode tmpNode = que.poll();
                if (len == 1) {
                    // 层序遍历的时候，判断是否遍历到单层的最后面的元素，如果是，就放进result数组中，随后返回result就可以了。
                    resultList.add(tmpNode.val);
                }

                if (tmpNode.left != null) { que.offer(tmpNode.left); }
                if (tmpNode.right != null) { que.offer(tmpNode.right); }
                len--;
            }
        }

        return resultList;
    }
}
```


#### lc543 - diameter-of-binary-tree

- https://leetcode.com/problems/diameter-of-binary-tree/description/
- solution: https://leetcode.cn/problems/diameter-of-binary-tree/solutions/139683/er-cha-shu-de-zhi-jing-by-leetcode-solution/


### BST

#### lc938 - range-sum-of-bst 

- https://leetcode.com/problems/range-sum-of-bst/description/



