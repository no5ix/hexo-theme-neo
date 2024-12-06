---
title: Algo 代码随想录 注释
date: 2024-08-15 00:54:08
tags:
- noodle
- Algo
- LeetCode
categories:
- Algo
password: '0622'
---


# 算法白话总结

参考: https://programmercarl.com/
推荐参考**本博客总结**的 {% post_link algo_newbie %} , 和本文对照着看


**. . .**<!-- more -->


# 概绍

本群的每日刷题打卡活动, 按照 GitHub 49k star的项目 https://github.com/youngyangyang04/leetcode-master 的刷题顺序.
跟着群里有个伴一起刷题或许更容易坚持达成每日一题的目标. 做完题目之后可以在群里的小程序"今日leetcode刷题打卡"里打卡. 

- 网页版: 代码随想录 https://programmercarl.com/
- 本博客只记录那些有明显自我疑问而<<代码随想录>>没有说明清楚的题目, 会标识出来并注释


# 本文完整参考代码

<https://github.com/no5ix/no5ix.github.io/blob/source/source/code/test_algo_na.java>


# Java常用接口和实现

## Map

``` java
Map<Integer, Integer> map = new HashMap<>();
map.put(1, 2);
map.put(2, 3);
map.get(1);
map.getOrDefault(1, 0);
map.containsKey(1);
map.size();
map.isEmpty();
for (Map.Entry<Integer, Integer> es: map.entrySet()) {
    System.out.println(es.getKey());
    System.out.println(es.getValue());
}
map.remove(1);
System.out.println(map);
map.clear();
```


## Set

``` java
Set<Integer> set = new HashSet<>();
set.add(2);
set.add(23);
set.add(231);
set.remove(231);
set.size();
set.isEmpty();
System.out.println("set.contains(2) : " + set.contains(2));
System.out.println("set.contains(231) : " + set.contains(231));
System.out.println(set);
set.clear();
```


## List

``` java
        List<Integer> list = new ArrayList<>();
        list.add(11);
        list.add(23);
        list.add(31);
        list.add(377);
        list.size();
        list.remove(0);
        list.get(0);
        list.isEmpty();
        for (int i : list) {
            System.out.println(i);
        }
        list.set(2, 33);
        System.out.println("list: " + list);
        list.clear();
```


## Queue

``` java
Queue<Integer> queue = new ArrayDeque<>();  // 不要用 LinkedList, ArrayDeque用circular buffer实现的, 是最高效的: https://stackoverflow.com/questions/6129805/what-is-the-fastest-java-collection-with-the-basic-functionality-of-a-queue
queue.offer(1);
queue.offer(2);
queue.isEmpty();
for (int i : queue) {
    System.out.println(i);
}
queue.poll();
System.out.println("queue: " + queue);
queue.peek();
queue.poll();
queue.size();
queue.clear();
queue.isEmpty();
```


## Deque

``` java
Deque<Integer> deque = new ArrayDeque<>();  // 不要用 LinkedList, ArrayDeque用circular buffer实现的, 是最高效的: https://stackoverflow.com/questions/6129805/what-is-the-fastest-java-collection-with-the-basic-functionality-of-a-queue
deque.offerFirst(1);
deque.offerLast(2);
deque.offerLast(23);
for (int i : deque) {
    System.out.println(i);
}
System.out.println(deque);
deque.pollFirst();
int resultValue = deque.pollLast();
int headValue = deque.peekFirst();
int tailValue = deque.peekLast();
System.out.println(resultValue);
System.out.println("deque: " + deque);
deque.clear();
deque.size();
```


## Stack

``` java
Stack<Integer> stack = new Stack<>();
stack.push(1);
stack.peek();
stack.pop();
stack.isEmpty();
stack.size();
stack.clear();
```


## String

``` java
String string = " testString  ";
char[] charArray = string.toCharArray();
System.out.println(charArray);
System.out.println("string.length(): " + string.length());
string.charAt(2);
System.out.println("string.substring(1, 4) :" + string.substring(1, 4));
String trimedString = string.trim();
System.out.println("trimedString.substring(1, 4) :" + trimedString.substring(1, 4));
string.isEmpty();
System.out.println(string);
```


# 数组

## lc704 - 二分查找 - 20240814

- https://programmercarl.com/0704.二分查找.html#二分法第一种写法
- https://leetcode.com/problems/binary-search/

``` java
class Solution {
    public int search(int[] numbers, int targetNumber) {
        if (targetNumber < numbers[0] || targetNumber > numbers[numbers.length - 1]) {
            return -1;
        }
        int leftIndex = 0;
        int rightIndex = numbers.length - 1;
        while (leftIndex <= rightIndex) {  // 因为我们定义 target 是在一个在左闭右闭的区间里，也就是[left, right], 所以要使用 <= ，因为left == right是有意义的
        
            /*
            url: https://stackoverflow.com/questions/27167943/why-leftright-left-2-will-not-overflow
            Q: why left+(right-left)/2 can avoid overflow?
            A: 
                Suppose (to make the example easier) the maximum integer is 100, left = 50, and right = 80. If you use the naive formula:

                int mid = (left + right)/2;
                the addition will result in 130, which overflows.

                If you instead do:

                int mid = left + (right - left)/2;
                you can't overflow in (right - left) because you're subtracting a smaller number from a larger number. That always results in an even smaller number, so it can't possibly go over the maximum. E.g. 80 - 50 = 30.

                WWWWasp said: Since (right - left) is the distance between left and right, so `left + (right - left)/2` will not be larger than the right. Furthermore, it will not be larger than the maximum integer.
            */
            int midIndex = leftIndex + ((rightIndex - leftIndex) >> 1);  // >> 1 等同于 除以 2
            if (numbers[midIndex] == targetNumber) {
                return midIndex;
            } else if (numbers[midIndex] < targetNumber) {
                leftIndex = midIndex + 1;
            } else {
                rightIndex = midIndex - 1;
            }
        }
        return -1;
    }
}

public class test{
    public static void main(String[] args){
        Solution solution = new Solution();
        int[] myList = {1, 2, 3, 5, 6, 7, 8, 9, 11};
        int ret = solution.search(myList, 7);
        System.out.println(ret);
    }
}
```

### 二分查找扩展题 - lc69 - 求平方

- https://leetcode.com/problems/sqrtx/description/

``` java
class Solution {
    public int mySqrt(int x) {
        if (x == 0 || x == 1) {
            return x;
        }
        int left = 1;
        int right = x;
        int mid = 0;
        while (left <= right) {
            mid = left + (right - left) / 2;
            if ((long)mid * mid > x) {
                right = mid - 1;
            } else if ((long)mid * mid < x) {
                left = mid + 1;
            } else {
                return mid;
            }
        }
        // 为什么返回right而不是left? 因为最后是left 大于了right才退出循环的, 所以要取小的那个, 退出循环的时候right小一些
        // 比如 [1, 2, 3, 4, 5, 6, 7, 8], 最后一轮循环是 left=3, right=3, 然后此时mid也等于3, 3*3=9 所以 right得减一, right 就等于2 了
        return right;
    }
}
```

## lc27

- https://programmercarl.com/0027.移除元素.html#算法公开课
- https://leetcode.com/problems/remove-element/description/

双指针法（快慢指针法）： 通过一个快指针和慢指针在一个for循环下完成两个for循环的工作。

定义快慢指针:    
- 快指针：寻找新数组的元素 ，新数组就是不含有目标元素的数组
- 慢指针：指向更新 新数组下标的位置

诀窍: 应该想象成 slowIndex 之前的那些数组格子就是新的数组

``` java
class Solution {
    public int removeElement(int[] nums, int val) {
        int slowIndex = 0;
        int fastIndex = 0;
        for (;fastIndex < nums.length; fastIndex++) {
            if (nums[fastIndex] != val) {
                nums[slowIndex++] = nums[fastIndex];
            }
        }
        return slowIndex;
    }
}
```


## lc977 - 有序数组的平方 - 20240916

- https://programmercarl.com/0977.有序数组的平方.html#算法公开课
- https://leetcode.com/problems/squares-of-a-sorted-array/description/

``` java
class Solution {  // lc977
    public int[] sortedSquares(int[] nums) {
        int[] resultArray = new int[nums.length];
        int startIndex = 0;
        int endIndex = nums.length - 1;
        int resultIndex = nums.length - 1;
        while (startIndex <= endIndex) {  // 这里是 <= , 因为最后相等时候的那个元素也要处理
            if (nums[startIndex] * nums[startIndex] > nums[endIndex] * nums[endIndex]) {
                resultArray[resultIndex--] = nums[startIndex] * nums[startIndex];
                startIndex++;
            } else {
                resultArray[resultIndex--] = nums[endIndex] * nums[endIndex];
                endIndex--;
            }
        }
        return resultArray;
    }
}

public class test{
    public static void main(String[] args){
        Solution solution = new Solution();
        int[] myList = {-7, 2, 3, 5, 6};
        int[] ret = solution.sortedSquares(myList);
        System.out.println(ret);
        for (int i = 0; i < ret.length; ++i) {
            System.out.println(ret[i]);
        }
    }
}
```

# 链表

## lc206 - 链表反转

- https://programmercarl.com/0206.翻转链表.html#算法公开课
- https://leetcode.com/problems/reverse-linked-list/description/

- 重要!!!!! 记忆口诀: 举一反(反转)三(3个指针! pre! cur! temp!)
- 核心要点就是需要保存一个后面可能要用的结点就弄一个指针出来, 比如这个pre

``` java
// 双指针
class Solution {
    public ListNode reverseList(ListNode head) {
        ListNode prev = null;
        ListNode cur = head;
        ListNode temp = null;
        while (cur != null) {
            temp = cur.next;// 保存下一个节点
            cur.next = prev;
            prev = cur;
            cur = temp;
        }
        return prev;
    }
}
```


## lc24 - 两两交换链表中的节点

- https://programmercarl.com/0024.两两交换链表中的节点.html
- https://leetcode.com/problems/swap-nodes-in-pairs/

- 重要!!!!! 记忆口诀(和反转链表很类似): 举一(1个dummyHead指针!)反(反转)三(3个指针! cur! node1! node2!)
- 核心要点(和反转链表很类似): 就是需要保存一个后面可能要用的结点就弄一个指针出来, 需要两个就弄两个指针, 比如这个node1, node2 !!

``` java
// 将步骤 2,3 交换顺序，这样不用定义 temp 节点
public ListNode swapPairs(ListNode head) {
    ListNode dummy = new ListNode(0, head);
    ListNode cur = dummy;
    while (cur.next != null && cur.next.next != null) {
        ListNode node1 = cur.next;// 第 1 个节点
        ListNode node2 = cur.next.next;// 第 2 个节点
        cur.next = node2; // 步骤 1
        node1.next = node2.next;// 步骤 3
        node2.next = node1;// 步骤 2
        cur = cur.next.next;
    }
    return dummy.next;
}
```


# 哈希表

## lc15 - 3Sum

- https://programmercarl.com/0015.三数之和.html#算法公开课
- https://leetcode.com/problems/3sum/

其实这道题目使用哈希法并不十分合适(4sum就没办法了)，因为在去重的操作中有很多细节需要注意，在面试中很难直接写出没有bug的代码。
接下来我来介绍另一个解法：双指针法(4sum也是这种思路)，这道题目使用双指针法 要比哈希法高效一些，那么来讲解一下具体实现的思路。

``` java
class Solution {
    public List<List<Integer>> threeSum(int[] nums) {
        List<List<Integer>> result = new ArrayList<>();
        Arrays.sort(nums);
	    // 找出a + b + c = 0
        // a = nums[i], b = nums[left], c = nums[right]
        for (int i = 0; i < nums.length; i++) {
	    // 排序之后如果第一个元素已经大于零，那么无论如何组合都不可能凑成三元组，直接返回结果就可以了
            if (nums[i] > 0) { 
                // return result;  用 return不好, 用break好些, 和4sum用break统一了
                break;
            }

            if (i > 0 && nums[i] == nums[i - 1]) {  // 去重a
                continue;
            }

            int left = i + 1;
            int right = nums.length - 1;
            while (right > left) {
                int sum = nums[i] + nums[left] + nums[right];
                if (sum > 0) {
                    right--;
                } else if (sum < 0) {
                    left++;
                } else {
                    result.add(Arrays.asList(nums[i], nums[left], nums[right]));
		    // 去重逻辑应该放在找到一个三元组之后，对b 和 c去重
                    while (right > left && nums[right] == nums[right - 1]) right--;
                    while (right > left && nums[left] == nums[left + 1]) left++;
                    
                    right--; 
                    left++;
                }
            }
        }
        return result;
    }
}
```


## lc18 - 4Sum

- https://programmercarl.com/0018.四数之和.html#其他语言版本
- https://leetcode.com/problems/4sum/description/

``` java
class Solution {
    public static List<List<Integer>> fourSum(int[] nums, int target) {
        Arrays.sort(nums);
        List<List<Integer>> resultList = new ArrayList<>();

        for (int i = 0; i < nums.length; ++i) {
            if (nums[i] >= 0 && nums[i] > target) {
                break;
            }
            if (i > 0 && nums[i] == nums[i - 1]) {
                continue;
            }
            for (int j = i + 1; j < nums.length; ++j) {
                if (nums[i] + nums[j] >= 0 && nums[i] + nums[j] > target) {
                    System.out.println("i:" + i + ", j:" + j);
                    // return resultList; // return resultList;  // can't return here, considering [-3,-2,-1,0,0,1,2,3] , i = 1, j = 7, would lose [-1, 0, 0, 1]
                    break;
                }
                if (j > i + 1 && nums[j] == nums[j - 1]) {
                    continue;
                }
                int left = j + 1;
                int right = nums.length - 1;
                while (left < right) {
                    long sum = (long) nums[i] + nums[j] + nums[left] + nums[right];
                    if (sum > target) {
                        right--;
                    } else if (sum < target) {
                        left++;
                    } else {
                        resultList.add(Arrays.asList(nums[i], nums[j], nums[left], nums[right]));
                        while (left < right && nums[left + 1] == nums[left]) {
                            left++;
                        }
                        while (left < right && nums[right - 1] == nums[right]) {
                            right--;
                        }
                        right--;
                        left++;
                    }
                }
            }
        }
        return resultList;
    }

    public static void main(String[] args) {
        // int[] testArr = {2, 2, 2, 2, 2};
        int[] testArr = {-3,-2,-1,0,0,1,2,3};
        // int[] testArr = {2, 3, 1, 2, 2};
        // int target = 8;
        // int[] testArr = {1,0,-1,0,-2,2};
        int target = 0;
        List<List<Integer>> result = fourSum(testArr, target);
        for (List<Integer> arr : result) {
            System.out.println(arr);
        }
    }
}
```


# 字符串

## lc28 - 实现strStr() - 20240923

### 暴力解法-掌握这个暴力解法即可

``` java
class Solution {
    public int strStr(String haystack, String needle) {
        int hLen = haystack.length();
        int nLen = needle.length();
        // 0, 1, 2, 3, 4, 5
        for (int i = 0; i + nLen <= hLen; ++i) {
            boolean flag = true;
            for (int j = 0; j < nLen; ++j) {
                if (haystack.charAt(i + j) != needle.charAt(j)) {
                    flag = false;
                    break;
                }
            }
            if (flag == true) {
                return i;
            }
        }
        return -1;
    }
}
```

### KMP不要求-面试基本不会出的-背代码就没意思了

- https://programmercarl.com/0028.实现strStr.html#算法公开课
- https://leetcode.com/problems/find-the-index-of-the-first-occurrence-in-a-string/

![](/img/algo_na/KMP精讲2.gif)

看一下如何利用 前缀表找到 当字符不匹配的时候应该指针应该移动的位置。如上动画所示：

找到的不匹配的位置， 那么此时我们要看它的前一个字符的前缀表的数值是多少。

为什么要前一个字符的前缀表的数值呢，因为要找前面字符串的最长相同的前缀和后缀。

所以要看前一位的 前缀表的数值。

前一个字符的前缀表的数值是2， 所以把下标移动到下标2的位置继续比配。 可以再反复看一下上面的动画。

最后就在文本串中找到了和模式串匹配的子串了。

``` java
class Solution {
    //前缀表（不减一）Java实现
    public int strStr(String haystack, String needle) {
        if (needle.length() == 0) return 0;
        int[] next = new int[needle.length()];  // 前缀表
        getNext(next, needle);

        int j = 0;  // 此处 j 指向 基于模式串 needle 的 内部的起始位置
        for (int i = 0; i < haystack.length(); i++) {  // i 指向 基于文本串 haystack 内部的起始位置。
            while (j > 0 && needle.charAt(j) != haystack.charAt(i)) 
                j = next[j - 1];  // strStr 里匹配过程里的寻找前一位来继续匹配; 不懂的话看视频 https://www.bilibili.com/video/BV1PD4y1o7nd/?vd_source=8a83b38420b65ac33aa101b7754630f6 里的 "使用前缀表的匹配过程" 环节
            if (needle.charAt(j) == haystack.charAt(i)) 
                j++;
            if (j == needle.length())  // 当 j 等于needle 长度的时候, 说明 j 指向了模式串t的末尾的后面，那么就说明模式串t完全匹配文本串s里的某个子串了。
                return i - needle.length() + 1;
        }
        return -1;

    }
    
    private void getNext(int[] next, String s) {
        int j = 0;  // 此处 j 是 前缀 的末尾位置, 也是前缀的长度
        next[0] = 0;
        for (int i = 1; i < s.length(); i++) {  // i 是后缀的末尾位置
            while (j > 0 && s.charAt(j) != s.charAt(i))  // 此时前后缀不相等; (j要保证大于0，因为下面有取j-1作为数组下标的操作
                j = next[j - 1];  // 注意这里，是要找前一位的对应的回退位置了; 为什么这里要找前一位的对应的回退位置呢? 因为和 上面 strStr 里匹配过程里的寻找前一位来继续匹配是一样一样的
            if (s.charAt(j) == s.charAt(i))   // 此时前后缀相等
                j++;
            next[i] = j;  // 因为 j 既是前缀 的末尾位置, 又是前缀的长度, 所以此处直接在 next 表里存下 j
        }
    }
}
```

## lc459 - 重复的子字符串-暴力解法-掌握这个暴力解法即可

- https://programmercarl.com/0459.重复的子字符串.html#算法公开课
- https://leetcode.com/problems/repeated-substring-pattern/

``` java
// 作者：力扣官方题解
// 链接：https://leetcode.cn/problems/repeated-substring-pattern/solutions/386481/zhong-fu-de-zi-zi-fu-chuan-by-leetcode-solution/
class Solution {
    public boolean repeatedSubstringPattern(String s) {
        int n = s.length();
        for (int i = 1; i * 2 <= n; ++i) {  // 这个 i 并不是 字符串的index, 而是子串长度; 并且注意到一个小优化是，因为子串至少需要重复一次，所以子串长度 i 不会大于 n 的一半，
            if (n % i == 0) {  // s 的长度一定是子串长度的倍数
                boolean match = true;
                for (int j = i; j < n; ++j) {
                    int offset = j % i;  // 子串肯定是 s 的前缀, 这里是拿字符串的子串前缀的index
                    if (s.charAt(j) != s.charAt(offset)) {
                        match = false;
                        break;
                    }
                }
                if (match) {
                    return true;
                }
            }
        }
        return false;
    }
}
```

# 栈与队列

## lc239 - Sliding Window Maximum

- https://programmercarl.com/0239.滑动窗口最大值.html#其他语言版本
- https://leetcode.com/problems/sliding-window-maximum/

``` java
//利用双端队列手动实现单调队列
/**
 * 用一个单调队列来存储对应的下标，每当窗口滑动的时候，直接取队列的头部指针对应的值放入结果集即可
 * 单调队列类似 （tail -->） 3 --> 2 --> 1 --> 0 (--> head) (右边为头结点，元素存的是下标)
 */
class Solution {
    public int[] maxSlidingWindow(int[] nums, int k) {
        Deque<Integer> deque = new ArrayDeque<>();
        int n = nums.length;
        int[] res = new int[n - k + 1];
        int j = 0;
        for (int i = 0; i < n; ++i) {
            // 根据题意，i为nums下标，是要在[i - k + 1, i] 中选到最大值，只需要保证两点
            // 1.队列头结点需要在[i - k + 1, i]范围内，不符合则要弹出
            while (!deque.isEmpty() && deque.peekFirst() < i - k + 1) {
                deque.pollFirst();
            }
            // 2.既然是单调，就要保证每次放进去的数字要比末尾的都大，否则也弹出
            while (!deque.isEmpty() && nums[i] > nums[deque.peekLast()]) {
                deque.pollLast();
            }
            deque.addLast(i);

            // 因为单调，当i增长到符合第一个k范围的时候，每滑动一步都将队列头节点放入结果就行了
            if (i >= k - 1 ) {
                res[j++] = nums[deque.peekFirst()];
            }
        }
        return res;
    }
}
```

## lc347 - Top K Frequent Elements

- https://leetcode.com/problems/top-k-frequent-elements/description/
- https://programmercarl.com/0347.前K个高频元素.html#其他语言版本
- Similar problem: https://leetcode.com/problems/kth-largest-element-in-an-array/

We should solve this kind of top-level problem using the “Quick Select” approach (it’s very similar to Quick Sort). Because its time complexity of O(n) is lower, this method is more efficient than the Heap-based approach with a time complexity of O(nlogn).

Referenced this: https://www.bilibili.com/video/BV1Bz4y117Fr/

- 时间复杂度：O(N)，其中 N 为数组的长度。
设处理长度为 N 的数组的时间复杂度为 f(N)。由于处理的过程包括一次遍历和一次子分支的递归，最好情况下，有 f(N)=O(N)+f(N/2)，根据 主定理，能够得到 f(N)=O(N)。
- 最坏情况下，每次取的中枢数组的元素都位于数组的两端，时间复杂度退化为 O(N)。但由于我们在每次递归的开始会先随机选取中枢元素，故出现最坏情况的概率很低。
- 平均情况下，时间复杂度为 O(N)。
- 空间复杂度：O(N)。哈希表的大小为 O(N)，用于排序的数组的大小也为 O(N)，快速排序的空间复杂度最好情况为 O(logN)，最坏情况为 O(N)。

链接：https://leetcode.cn/problems/top-k-frequent-elements/solutions/402568/qian-k-ge-gao-pin-yuan-su-by-leetcode-solution/


``` java
import java.util.Map;
import java.util.HashMap;

class Solution {

    public static void main(String[] args) {
        // int[] array = {10, 7, 8, 9, 1, 5};
        int[] array = {1, 1, 1, 1, 2, 2, 3, 3, 3, 5, 5, 5, 5, 6, 6};
        int[] res = topKFrequent(array, 2);
        // int[] array = {1};
        // int[] res = topKFrequent(array, 1);
        for (int num : res) {
            System.out.print("num: " + num + " ");
        }
    }
    
    public static int[] topKFrequent(int[] nums, int k) {
        Map<Integer, Integer> map = new HashMap<>();
        for (int num : nums) {
            map.put(num, map.getOrDefault(num, 0) + 1);
        }
        Pair[] pairs = new Pair[map.size()];
        int index = 0;
        for (Map.Entry<Integer, Integer> entry : map.entrySet()) {
            pairs[index++] = new Pair(entry.getKey(), entry.getValue());
        }
        int partitionIndex = 0;
        int pairLen = pairs.length;
        int targetIndex = pairLen - k;
        int low = 0;
        int high = pairLen - 1;
        // System.out.println(high);
        while (true) {
            partitionIndex = quickSelect(pairs, low, high);
            if (partitionIndex == targetIndex) {
                int[] res = new int[k];
                for (int i = 0; i < k; ++i) {
                    res[i] = pairs[--pairLen].num;
                }
                return res; 
            } else if (partitionIndex > targetIndex) {
                high = partitionIndex - 1;
            } else {
                low = partitionIndex + 1;
            }
        }
    }

    private static int quickSelect(Pair[] pairs, int low, int high) {
        // System.out.println(low);
        // System.out.println(high);

        // To generate a random number within the range [3, 6], where both 3 and 6 are inclusive, you can modify the logic slightly from the [3, 6) approach:
        // double randomNumber = 3 + (Math.random() * (6 - 3 + 1));
        // 1.	Math.random() generates a random number in the range [0.0, 1.0).
        // 2.	Multiplying it by (6 - 3 + 1) (which is 4) adjusts the range to [0.0, 4.0).
        // 3.	Adding 3 shifts the range to [3.0, 7.0).
        // 4.	Since the inclusive range is [3, 6], you’ll need to truncate or floor the result if you’re generating an integer.

        int picked = (int) (Math.random() * (high - low + 1)) + low;
        Pair tempPair = pairs[low];
        pairs[low] = pairs[picked];
        pairs[picked] = tempPair;

        Pair pivot = pairs[low];
        int partitionIndex = low;  // 参考 algo_newbie.md ##普通快排 里的代码, 及其动画演示

        for (int i = low + 1; i <= high; ++i) {
            if (pairs[i].freq < pivot.freq) {
                Pair temp = pairs[i];
                pairs[i] = pairs[partitionIndex + 1];
                pairs[partitionIndex + 1] = temp;
                partitionIndex++;
            }
        }

        pairs[low] = pairs[partitionIndex];
        pairs[partitionIndex] = pivot;

        return partitionIndex;
    }

    static class Pair {
        int num;
        int freq;
        Pair(int number, int frequency) {
            num = number;
            freq = frequency;
        }
    }
}
```


# 二叉树

## 二叉树递归解法的写法窍门
    
再来看返回值，递归函数什么时候需要返回值？什么时候不需要返回值？这里总结如下三点：

- 如果需要搜索**整棵**二叉树且不用处理递归返回值，递归函数就不要返回值。（这种情况就是本文下半部分介绍的113.路径总和ii, https://programmercarl.com/0112.路径总和.html#相关题目推荐）
- 如果需要搜索**整棵**二叉树且需要处理递归返回值，递归函数就需要返回值。 （这种情况我们在236. 二叉树的最近公共祖先, https://programmercarl.com/0236.二叉树的最近公共祖先.html#算法公开课）
- 如果要搜索**其中一条**符合条件的路径，那么递归一定需要返回值，因为遇到符合条件的路径了就要及时返回。（这种情况符合: https://programmercarl.com/0112.路径总和.html#算法公开课）


## 前序
     
![](/img/algo_na/二叉树前序遍历（迭代法）.gif)

前序遍历是中左右，每次先处理的是中间节点，那么先将根节点放入栈中，然后将右孩子加入栈，再加入左孩子。

为什么要先加入 右孩子，再加入左孩子呢？ 因为这样出栈的时候才是中左右的顺序。

``` java
class Solution {
    public List<Integer> preorderTraversal(TreeNode root) {
        List<Integer> result = new ArrayList<>();
        if (root == null) { return result; }
        Stack<TreeNode> stack = new Stack<>();
        stack.push(root);
        while (!stack.isEmpty()) {
            TreeNode node = stack.pop();
            result.add(node.val);
            if (node.right != null) { stack.push(node.right); }
            if (node.left != null) { stack.push(node.left); }
        }
        return result;
    }
}
```

## 中序

![](/img/algo_na/二叉树中序遍历（迭代法）.gif)

中序遍历是左中右，先访问的是二叉树顶部的节点，然后一层一层向下访问，直到到达树左面的最底部，再开始处理节点（也就是在把节点的数值放进result数组中），这就造成了处理顺序和访问顺序是不一致的。

那么在使用迭代法写中序遍历，就需要借用指针的遍历来帮助访问节点，栈则用来处理节点上的元素。


``` java
class Solution {
    public List<Integer> inorderTraversal(TreeNode root) {
        List<Integer> result = new ArrayList<>();
        if (root == null) {
            return result;
        }
        Stack<TreeNode> stack = new Stack<>();
        TreeNode cur = root;
        while (cur != null || !stack.isEmpty()) {
            if (cur != null) {
                stack.push(cur);
                cur = cur.left;  // 左
            } else {
                cur = stack.pop();
                result.add(cur.val);  // 中
                cur = cur.right;  // 右
            }
        }
        return result;
    }
}
```

## 后序

1. 先序遍历是`中左右`
2. 调整代码左右循序
3. 变成`中右左` -> 反转result数组 -> `左右中`
4. 后序遍历是`左右中`

## 层序

![](/img/algo_na/binary_tree_level_order.gif)

``` java
class Solution {
    // // 注意返回值是List<List<Integer>>不是单List<Integer>, 因为层序遍历一个二叉树。就是从左到右一层一层的去遍历二叉树, 每一层都是一个 List<Integer>, 所以每一层加起来组成一个大的 List<List<Integer>>
    public List<List<Integer>> levelOrder(TreeNode root) {  
        List<List<Integer>> resultList = new ArrayList<List<Integer>>();
        if (root == null ) {
            return resultList;
        }
        Queue<TreeNode> que = new LinkedList<TreeNode>();
        que.offer(root);

        while (!que.isEmpty()) {
            List<Integer> itemList = new ArrayList<Integer>();
            int len = que.size();  // 注意这个len, 这里一定要使用固定大小 len，不要使用que.size()，因为que.size是不断变化的

            while (len > 0) {
                TreeNode tmpNode = que.poll();
                itemList.add(tmpNode.val);

                if (tmpNode.left != null) { que.offer(tmpNode.left); }
                if (tmpNode.right != null) { que.offer(tmpNode.right); }
                len--;
            }
            resultList.add(itemList);
        }

        return resultList;
    }
}
```

## 高度

- 二叉树节点的高度：指从`该节点`到叶子节点的最长简单路径边的条数或者节点数（取决于高度从0开始还是从1开始）
- 二叉树节点的深度：指从`根节点`到该节点的最长简单路径边的条数或者节点数（取决于深度从0开始还是从1开始）
- 而根节点的高度就是二叉树的最大深度

## 深度

- 求深度用`层序遍历`是最适合的最直观容易理解
- 二叉树的深度: 根节点到最远叶子节点的最长路径上的节点数。
- 叶子节点: 是指没有子节点的节点。

### 最大深度

使用迭代法的话，**使用层序遍历是最为合适的**，因为最大的深度就是二叉树的层数，和层序遍历的方式极其吻合。
在二叉树中，一层一层的来遍历二叉树，记录一下遍历的层数就是二叉树的深度，

``` java
class Solution {
    public int maxDepth(TreeNode root) {
        if (root == null) {
            return 0;
        }
        int depth = 0;
        Queue<TreeNode> que = new LinkedList<>();
        que.offer(root);
        while (!que.isEmpty()) {
            int len = que.size();
            depth++;
            while (len > 0) {
                TreeNode tmpNode = que.poll();
                if (tmpNode.left != null) { que.offer(tmpNode.left); }
                if (tmpNode.right != null) { que.offer(tmpNode.right); }
                len--;
            }
        }
        return depth;
    }
}
```

### 最小深度

最小深度: 是从根节点到最近叶子节点的最短路径上的节点数量。

``` java
class Solution {
    public int maxDepth(TreeNode root) {
        if (root == null) {
            return 0;
        }
        int depth = 0;
        Queue<TreeNode> que = new LinkedList<>();
        que.offer(root);
        while (!que.isEmpty()) {
            int len = que.size();
            depth++;
            while (len > 0) {
                TreeNode tmpNode = que.poll();
                if (tmpNode.left == null && tmpNode.right == null) {
                    // 当左右孩子都为空的时候，说明是最低点的一层了，退出
                    return depth;
                }
                if (tmpNode.left != null) { que.offer(tmpNode.left); }
                if (tmpNode.right != null) { que.offer(tmpNode.right); }
                len--;
            }
        }
        return depth;
    }
}
```

# 回溯

## 模板

``` cpp
void backtracking(参数) {
    if (终止条件) {
        存放结果;
        return;
    }

    for (选择：本层集合中元素（树中节点孩子的数量就是集合的大小）) {
        处理节点;
        backtracking(路径，选择列表); // 递归
        回溯，撤销处理结果
    }
}
```

## 组合

- https://leetcode.com/problems/combinations/
- https://programmercarl.com/0077.组合.html#算法公开课

### 没有剪枝的版本

![](/img/algo_na/20201123195242899.png)

``` java
class Solution {
    // ArrayList<ArrayList<Integer>> resultArr = new ArrayList<>();和    ArrayList<ArrayList<Integer>> resultArr = new ArrayList<ArrayList<Integer>>();有啥区别? 
    // 完全等价的, `ArrayList<ArrayList<Integer>> resultArr = new ArrayList<>();`
    // - 这是Java 7引入的“钻石操作符”的用法。
    // - 使用钻石操作符可以简化泛型类型的实例化，特别是当构造函数右侧的类型已经由变量声明时。
    // - 它允许编译器自动推断出泛型类型参数，从而使代码更简洁、易读。//解法2：基于小顶堆实现
    public int[] topKFrequent2(int[] nums, int k) {
        Map<Integer,Integer> map = new HashMap<>(); //key为数组元素值,val为对应出现次数
        for (int num : nums) {
            map.put(num, map.getOrDefault(num, 0) + 1);
        }
        //在优先队列中存储二元组(num, cnt),cnt表示元素值num在数组中的出现次数
        //出现次数按从队头到队尾的顺序是从小到大排,出现次数最低的在队头(相当于小顶堆)
        PriorityQueue<int[]> pq = new PriorityQueue<>((pair1, pair2) -> pair1[1] - pair2[1]);
        for (Map.Entry<Integer, Integer> entry : map.entrySet()) { //小顶堆只需要维持k个元素有序
            if (pq.size() < k) { //小顶堆元素个数小于k个时直接加
                pq.add(new int[]{entry.getKey(), entry.getValue()});
            } else {
                if (entry.getValue() > pq.peek()[1]) { //当前元素出现次数大于小顶堆的根结点(这k个元素中出现次数最少的那个)
                    pq.poll(); //弹出队头(小顶堆的根结点),即把堆里出现次数最少的那个删除,留下的就是出现次数多的了
                    pq.add(new int[]{entry.getKey(), entry.getValue()});
                }
            }
        }
        int[] ans = new int[k];
        for (int i = k - 1; i >= 0; i--) { //依次弹出小顶堆,先弹出的是堆的根,出现次数少,后面弹出的出现次数多
            ans[i] = pq.poll()[0];
        }
        return ans;
    }
}
    ArrayList<ArrayList<Integer>> resultArr = new ArrayList<>();
    LinkedList<Integer> path = new LinkedList<>();
    public ArrayList<ArrayList<Integer>> combine(int n, int k) {
        backTracking(n, k, 1);
        return resultArr;
    }

    void backTracking(int n, int k, int startIndex) {
        if (path.size() == k) {
            resultArr.add(new ArrayList<>(path));
            return;
        }
        for (int i = startIndex; i <= n; ++i) {
            path.add(i);
            backTracking(n, k, i+1);
            path.removeLast();
        }
    }
}
```

### 剪枝的版本

![](/img/algo_na/20210130194335207-20230310134409532.png)

图中每一个节点（图中为矩形），就代表本层的一个for循环，那么每一层的for循环从第二个数开始遍历的话，都没有意义，都是无效遍历。

所以，可以剪枝的地方就在递归中每一层的for循环所选择的起始位置。

如果for循环选择的起始位置之后的元素个数 已经不足 我们需要的元素个数了，那么就没有必要搜索了。

注意代码中i，就是for循环里选择的起始位置。

`for (int i = startIndex; i <= n; i++) {`

接下来看一下优化过程如下：

- 已经选择的元素个数：`path.size();`
- 还需要的元素个数为:`k - path.size();`
- 在集合n中i最大可以从该起始位置开始遍历 : `n - (k - path.size()) + 1` (备注: `n - (k - path.size())` 就是表示从已经最大的数n往回退几个数再开始搜索遍历, 退几个数呢? 退 `k - path.size()` 个数, 后面多出来的那个 `+1`是因为要包括起始位置，我们要是一个左闭的集合)

那为什么 `n - (k - path.size()) + 1` 有个+1呢? 因为包括起始位置，我们要是一个左闭的集合。

举个例子，`n = 4，k = 3`， 目前已经选取的元素为0个（即path.size()为0），`n - (k - 0) + 1` 即 `4 - ( 3 - 0) + 1 = 2`。

从2开始搜索都是合理的，可以是组合`[2, 3, 4]`。从"3"开始就不合理了, 因为只能`[3, 4, ?]`, "4"后面没有了, 只有2个数字"3"和"4"能用.

这里大家想不懂的话，建议也举一个例子，就知道是不是要+1了。

所以优化之后的for循环是：

`for (int i = startIndex; i <= n - (k - path.size()) + 1; i++) // i为本次搜索的起始位置`

优化后整体代码 diff 如下：

``` diff java
class Solution {
    ArrayList<ArrayList<Integer>> resultArr = new ArrayList<>();
    LinkedList<Integer> path = new LinkedList<>();
    public ArrayList<ArrayList<Integer>> combine(int n, int k) {
        backTracking(n, k, 1);
        return resultArr;
    }
    void backTracking(int n, int k, int startIndex) {
        if (path.size() == k) {
            resultArr.add(new ArrayList<>(path));
            return;
        }
-       for (int i = startIndex; i <= n; ++i) {
+       for (int i = startIndex; i <= n - (k - path.size()) + 1; ++i) {
            path.add(i);
            backTracking(n, k, i+1);
            path.removeLast();
        }
    }
}
```
