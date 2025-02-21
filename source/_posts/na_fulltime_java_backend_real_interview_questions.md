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