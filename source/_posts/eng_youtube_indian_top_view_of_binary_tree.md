---
title: YT Indian Accent Top View of Binary Tree
date: 2024-12-30 00:59:21
tags:
- English
- Youtube
- Algo
- Subtitle
categories:
- English
---


# URL

https://www.youtube.com/watch?v=Et9OCDNvJ78


**. . .**<!-- more -->


# Subtitle

1
00:00:00,000 --> 00:00:01,439
before starting this video i'd love to
在开始这个视频之前，我要

2
00:00:01,439 --> 00:00:03,439
thank releval for sponsoring this entire
感谢 releval 赞助了整个

3
00:00:03,439 --> 00:00:05,120
tree series did you know that companies
树系列，你知道吗，

4
00:00:05,120 --> 00:00:07,040
like google apple starbucks are now
像谷歌、苹果、星巴克这样的公司现在正在

5
00:00:07,040 --> 00:00:08,559
hiring people without any degree or
招聘没有学位或

6
00:00:08,559 --> 00:00:10,719
experience why because they believe that
经验的人，因为他们认为

7
00:00:10,719 --> 00:00:12,559
skills are more important than anything
技能比其他任何东西都重要，

8
00:00:12,559 --> 00:00:14,719
else the top companies in india like the
顶级公司 在印度，像

9
00:00:14,719 --> 00:00:16,640
top startups have also started following
顶级创业公司也开始遵循

10
00:00:16,640 --> 00:00:18,240
this trend by hiring through a platform
这一趋势，通过一个相关的平台进行招聘，

11
00:00:18,240 --> 00:00:20,320
which is relevant which is backed up by
这个平台由

12
00:00:20,320 --> 00:00:22,240
an academy all you have to do is to give
一个学院支持，你所要做的就是参加

13
00:00:22,240 --> 00:00:24,000
the relevant test and based on your
相关的测试，并根据你的

14
00:00:24,000 --> 00:00:25,599
score this flat send your candidate
分数将你的候选人

15
00:00:25,599 --> 00:00:27,680
profiles to 50 plus companies which
资料发送给 50 多家公司，

16
00:00:27,680 --> 00:00:30,480
includes cred upgrade vedanta
包括信用升级韦丹塔

17
00:00:30,480 --> 00:00:32,238
and you can get selected for a job role
，你可以在一周内被选中担任某个职位，

18
00:00:32,238 --> 00:00:34,320
within a week another amazing thing

19
00:00:34,320 --> 00:00:36,559
about relevel is it's absolutely free so
重新分级的另一个令人惊奇之处在于它是完全免费的，所以

20
00:00:36,559 --> 00:00:37,840
please make sure you check out the links
请务必查看

21
00:00:37,840 --> 00:00:41,079
in the description
描述中的链接，

22
00:00:44,000 --> 00:00:45,440
hey everyone welcome back to the channel
大家好，欢迎回到频道，

23
00:00:45,440 --> 00:00:47,280
i hope you guys are doing extremely well
我希望 你们做得非常好，

24
00:00:47,280 --> 00:00:49,120
so today we will be discussing the top
所以今天我们将讨论

25
00:00:49,120 --> 00:00:50,879
view of a binary tree from the freakout
怪异树系列中的二叉树的顶视图，

26
00:00:50,879 --> 00:00:53,360
tree series so assume this is the banana
所以假设这是

27
00:00:53,360 --> 00:00:55,600
tree that is given to you and i'm
给你的香蕉树，我

28
00:00:55,600 --> 00:00:58,399
looking from the topmost level and it is
从最顶层看，它是

29
00:00:58,399 --> 00:01:01,039
in 1d shape like the tree is entirely in
1d 形状就像树完全是

30
00:01:01,039 --> 00:01:03,840
1d so if i ask you what is the top view
1d，所以如果我问你顶部是什么

31
00:01:03,840 --> 00:01:06,240
of this binary tree i can say initially
从这个二叉树的角度来看，我可以说，最初，

32
00:01:06,240 --> 00:01:07,280
i will be

33
00:01:07,280 --> 00:01:09,040
if i just start from left to right i'll
如果我从左到右开始，我

34
00:01:09,040 --> 00:01:11,439
be seeing 4
将看到 4，

35
00:01:11,439 --> 00:01:15,119
right after that i'll be seeing two
然后我将看到 2，

36
00:01:15,119 --> 00:01:18,320
right after that i'll be seeing one
然后我将看到 1，

37
00:01:18,320 --> 00:01:20,560
after that i'll be seeing three
然后我将看到 看到三

38
00:01:20,560 --> 00:01:22,479
after that i'll be seeing seven
之后，我会看到七，

39
00:01:22,479 --> 00:01:25,680
so i can say that the top view of this
所以我可以说这棵特定二叉树的顶视图

40
00:01:25,680 --> 00:01:28,880
particular binary tree will be 42137
将是42137，

41
00:01:28,880 --> 00:01:31,600
so i want you to deduce an algorithm
所以我想让你推导出一个算法，

42
00:01:31,600 --> 00:01:33,759
which basically gives you
它基本上可以

43
00:01:33,759 --> 00:01:36,000
gives me the top view of any given
给你任何给定二叉树的顶视图，

44
00:01:36,000 --> 00:01:38,000
binary tree

45
00:01:38,000 --> 00:01:40,720
so you know that in order to solve any
所以你 知道为了解决任何

46
00:01:40,720 --> 00:01:43,600
binary tree question we have to follow
二叉树问题，我们必须遵循

47
00:01:43,600 --> 00:01:45,360
traversal now either we follow the
遍历，现在我们要么遵循

48
00:01:45,360 --> 00:01:48,079
recursive traversal or we follow the
递归遍历，要么遵循

49
00:01:48,079 --> 00:01:50,479
level order traversal so over here we
层次遍历，所以在这里我们

50
00:01:50,479 --> 00:01:52,399
will be following the level order
将遵循层次

51
00:01:52,399 --> 00:01:55,280
traversal and why not recursion i'll
遍历，为什么不使用递归，我

52
00:01:55,280 --> 00:01:57,840
come to that but afterwards
会谈到这一点 但是

53
00:01:57,840 --> 00:02:00,240
now in this level order traversal if you
现在在这个层次遍历中，如果你还

54
00:02:00,240 --> 00:02:02,560
remember the vertical order traversal
记得

55
00:02:02,560 --> 00:02:04,799
that we did uh using the line concept so
我们使用线概念进行的垂直顺序遍历，那么

56
00:02:04,799 --> 00:02:06,880
we're going to use the line concept from
我们将使用

57
00:02:06,880 --> 00:02:09,360
vertical order traversal okay so this is
垂直顺序遍历中的线概念，好的，所以这是

58
00:02:09,360 --> 00:02:11,360
a line zero
一条线零，

59
00:02:11,360 --> 00:02:13,840
this is uh like whenever we move left we
就像每当我们 向左移动，我们

60
00:02:13,840 --> 00:02:16,319
will consider that as line minus one
将认为这是减去 一

61
00:02:16,319 --> 00:02:18,080
and if you're moving much further left
，如果你向左移动得更远，

62
00:02:18,080 --> 00:02:20,000
that's one more minus one that's minus
那就是再减一，也就是减二，

63
00:02:20,000 --> 00:02:20,879
two

64
00:02:20,879 --> 00:02:23,120
and over here this will be plus 1 on the
在这里，右边就是加一，

65
00:02:23,120 --> 00:02:25,360
right and this will be another plus 1 on
右边又是加一，

66
00:02:25,360 --> 00:02:27,440
the right that's plus 2. so on every
也就是加二。每一行都是如此

67
00:02:27,440 --> 00:02:30,000
line on every line whichever is the

68
00:02:30,000 --> 00:02:32,319
first node now on this line minus 2 the
现在这条线上的第一个节点减 2

69
00:02:32,319 --> 00:02:35,040
first node is 4 on this line minus 1 the
这条线上的第一个节点是 4 减 1 这条线上的

70
00:02:35,040 --> 00:02:37,519
first node when you uh look from top to
第一个节点从上往下看

71
00:02:37,519 --> 00:02:39,599
bottom that's two on this line zero
是 2 这条线上的零是 1

72
00:02:39,599 --> 00:02:42,480
that's one on this line one that's three
这条线上的 1

73
00:02:42,480 --> 00:02:45,200
on this line two that's seven so i can
这条线上的三是 2 那是七个，所以我可以

74
00:02:45,200 --> 00:02:47,280
say the first node
说

75
00:02:47,280 --> 00:02:50,879
in every line will be my top view that
每条线上的第一个节点将是我的顶视图，这就是

76
00:02:50,879 --> 00:02:53,440
is that is what i'll see right so we can
我将看到的，所以我们

77
00:02:53,440 --> 00:02:55,760
actually uh create the line concept and
实际上可以创建线概念并

78
00:02:55,760 --> 00:02:57,200
solve this problem using level order
使用层次遍历来解决这个问题，

79
00:02:57,200 --> 00:02:58,319
traversal

80
00:02:58,319 --> 00:02:59,760
so in order to solve this problem we
为了解决这个问题 问题是我们

81
00:02:59,760 --> 00:03:01,200
will be requiring a couple of data
需要几个数据

82
00:03:01,200 --> 00:03:03,440
structures the first one is the queue
结构，第一个是队列，

83
00:03:03,440 --> 00:03:05,519
which is definitely going to store uh
它肯定会存储呃

84
00:03:05,519 --> 00:03:07,840
the initial node that is the root and
初始节点，也就是根节点，

85
00:03:07,840 --> 00:03:09,920
the initial line is zero basically i'm
初始行是零，基本上我

86
00:03:09,920 --> 00:03:12,080
considering the starting line to be zero
认为起始行是零

87
00:03:12,080 --> 00:03:13,760
and i'll be requiring a map data
，我' 将再次需要地图数据

88
00:03:13,760 --> 00:03:15,920
structure again please make sure that
结构，请确保

89
00:03:15,920 --> 00:03:18,560
it's a map data structure which stores
这是一个映射数据结构，它存储了

90
00:03:18,560 --> 00:03:19,760
the line
行

91
00:03:19,760 --> 00:03:22,159
as well as the node
和节点，

92
00:03:22,159 --> 00:03:22,959
right

93
00:03:22,959 --> 00:03:24,879
and this is a map data structure because
这是一个映射数据结构，因为

94
00:03:24,879 --> 00:03:27,360
map stores everything in a sorted
映射以按键的排序方式存储所有内容，

95
00:03:27,360 --> 00:03:29,840
fashion of keys do not use unordered map

96
00:03:29,840 --> 00:03:31,680
if you're using c plus
如果您使用 c plus，请不要使用无序映射，

97
00:03:31,680 --> 00:03:33,920
so let's get started so initially you
所以让我们开始吧 你

98
00:03:33,920 --> 00:03:35,920
take the first node out from the queue
从队列中取出第一个节点，

99
00:03:35,920 --> 00:03:39,519
so that's a node of value one and a line
所以这是一个值为 1 的节点，位于第 0 行，

100
00:03:39,519 --> 00:03:40,640
zero

101
00:03:40,640 --> 00:03:41,599
so
那么

102
00:03:41,599 --> 00:03:43,599
on line zero do we have anything on the
在第 0 行，我们在地图上有什么吗？

103
00:03:43,599 --> 00:03:46,720
map no so it'll say 0 on line 0 the
没有，所以它会在第 0 行显示 0，

104
00:03:46,720 --> 00:03:49,360
first node that i see is 1
我看到的第一个节点是 1，

105
00:03:49,360 --> 00:03:50,799
right after that you know level order
对吗 之后你知道层次

106
00:03:50,799 --> 00:03:52,319
traversal is left
遍历是左到

107
00:03:52,319 --> 00:03:55,599
right so on the left we have a 2
右，所以在左边我们有2，

108
00:03:55,599 --> 00:03:57,840
correct so i'll take 2 and since it's on
所以我会取2，因为它在

109
00:03:57,840 --> 00:04:01,200
the left you will minus one on the line
左边，你会在线上减一，

110
00:04:01,200 --> 00:04:04,000
okay and on the right that's a three so
好的，在右边是3，所以

111
00:04:04,000 --> 00:04:05,840
you'll do a plus one on the line
你会 在线上做一个加一，

112
00:04:05,840 --> 00:04:09,439
perfect so the node one is completed
这样节点一就完成了，

113
00:04:09,439 --> 00:04:12,480
next you take two comma minus one so the
接下来你取两个逗号减一，这样

114
00:04:12,480 --> 00:04:14,480
node is two the line is
节点就是二，线就是

115
00:04:14,480 --> 00:04:18,000
minus 1. so if you have 2 comma minus 1
减一。所以如果你有2个逗号减1，

116
00:04:18,000 --> 00:04:19,759
can i see this that
我能看到

117
00:04:19,759 --> 00:04:21,839
we have a minus 1 so we do not have that
我们有减1吗 地图上没有这个位置，

118
00:04:21,839 --> 00:04:24,639
on the map so can i say the node 2 is
所以我可以 假设节点 2 是

119
00:04:24,639 --> 00:04:26,479
the first uh first

120
00:04:26,479 --> 00:04:28,080
node that i have seen in this line
这条线上我见过的第一个节点，

121
00:04:28,080 --> 00:04:31,360
perfect so on two do you have a left yes
那么在 2 上你有一个左节点，是的，

122
00:04:31,360 --> 00:04:33,280
that's a four i know what will be the
那是 4，我知道

123
00:04:33,280 --> 00:04:35,199
line if the line is minus one currently
如果这条线目前为负一

124
00:04:35,199 --> 00:04:36,800
and if i'm moving left
，如果我正在移动，那这条线会是什么 左边

125
00:04:36,800 --> 00:04:38,639
it's gonna be minus two
是减二

126
00:04:38,639 --> 00:04:40,479
and on the right i have a five
，右边是五，

127
00:04:40,479 --> 00:04:42,240
so if the line is minus one and i'm
所以如果这条线是减一，我

128
00:04:42,240 --> 00:04:46,160
moving right the line is gonna be zero
向右移动，这条线就是零

129
00:04:46,160 --> 00:04:47,199
perfect
完美，

130
00:04:47,199 --> 00:04:50,400
so that's what we have done
所以这就是我们接下来要做的，

131
00:04:50,400 --> 00:04:53,040
next is three comma
就是三个逗号

132
00:04:53,040 --> 00:04:55,600
plus one being the line so if you have a
加一是这条线，所以 如果你有

133
00:04:55,600 --> 00:04:56,800
three
三，

134
00:04:56,800 --> 00:04:58,720
can i say plus one is the line and
我可以说加一是这条线，

135
00:04:58,720 --> 00:05:00,400
that's the first time i'm visiting on
这是我第一次访问第一

136
00:05:00,400 --> 00:05:02,960
line one so you store whatever is there
行，所以你存储了这条线上的任何东西，

137
00:05:02,960 --> 00:05:04,320
on the line

138
00:05:04,320 --> 00:05:05,280
next
接下来

139
00:05:05,280 --> 00:05:07,120
do we have anything left of three do you
我们还有三的剩余吗，你

140
00:05:07,120 --> 00:05:09,280
have anything on left of three
在三的剩余上有什么东西吗

141
00:05:09,280 --> 00:05:11,440
no we do not have anything left of three
不，我们没有三以外的任何数，

142
00:05:11,440 --> 00:05:14,320
so we're not gonna do anything
所以我们什么也不做，

143
00:05:14,320 --> 00:05:15,919
do you have anything right of three
你有三以外的任何数吗，

144
00:05:15,919 --> 00:05:18,080
indeed we have that's seven so we're
我们有七，所以我们

145
00:05:18,080 --> 00:05:19,680
gonna take seven and we're gonna say
要取七，然后我们会说

146
00:05:19,680 --> 00:05:22,400
that we have this on the right so if the
我们在右边有这个，所以 如果这一

147
00:05:22,400 --> 00:05:24,479
line is one if you go right that will be
行是一如果你往右走那将是

148
00:05:24,479 --> 00:05:27,520
seven comma two so three is also done
七个逗号二所以三也完成了

149
00:05:27,520 --> 00:05:29,840
next four comma minus two do you have a
接下来的四个逗号 减二，你有

150
00:05:29,840 --> 00:05:32,560
minus two line no so minus two will take
减二的线吗？没有，所以减二会取

151
00:05:32,560 --> 00:05:34,560
the four so you have a node four with a
四，所以你有一个节点四和一条

152
00:05:34,560 --> 00:05:37,039
line minus two does four have anything
线减二，四在左边有什么东西

153
00:05:37,039 --> 00:05:38,960
on the left no does 4 have anything on
吗？没有，4在右边有什么东西吗？

154
00:05:38,960 --> 00:05:41,600
the right no so the note 4 has completed
没有，所以注释4已经完成

155
00:05:41,600 --> 00:05:44,240
next we have a 5 so let's take 5 and a
接下来我们有 5，所以让我们取 5 和

156
00:05:44,240 --> 00:05:47,120
line 0 very important point now the note
0 行，非常重要的一点现在注意

157
00:05:47,120 --> 00:05:50,479
5 is on the line 0. so on line 0 we have
5 在第 0 行。所以在第 0 行我们

158
00:05:50,479 --> 00:05:52,880
already won that is the first scene guy
已经赢了，这是第一个场景，

159
00:05:52,880 --> 00:05:54,880
so this five will not be considered in
所以这 5 不会在你的地图中被考虑

160
00:05:54,880 --> 00:05:55,840
your map

161
00:05:55,840 --> 00:05:57,840
on five do you have a left yes that is
在五上你有一个左边是的

162
00:05:57,840 --> 00:06:00,880
six and what is the line number minus
那是六行号减

163
00:06:00,880 --> 00:06:03,840
one so six comma minus one
一所以六逗号减一

164
00:06:03,840 --> 00:06:05,600
perfect so that's that's what we have
完美所以这就是我们

165
00:06:05,600 --> 00:06:08,319
done with five next take seven comma two
对五所做的接下来取七逗号二

166
00:06:08,319 --> 00:06:10,800
so take seven comma two do you have
所以取七逗号二你

167
00:06:10,800 --> 00:06:13,520
anything on two no so that's the first
对二有什么看法 不，这是你第一次

168
00:06:13,520 --> 00:06:16,160
time you visit someone so i visited the
拜访某人，所以我参观了

169
00:06:16,160 --> 00:06:18,639
seven hour left on a right no so seven
左边的七个小时，不，所以七

170
00:06:18,639 --> 00:06:20,960
is also done next you will have 6 comma
也完成了，接下来你将有 6 个逗号

171
00:06:20,960 --> 00:06:24,000
minus 1 6 comma minus 1 minus 1 is
减 1 6 个逗号减 1 减 1

172
00:06:24,000 --> 00:06:26,080
already there no need to consider 6
已经存在，无需考虑 6

173
00:06:26,080 --> 00:06:27,440
doesn't have a left doesn't have a right
没有 有左边 没有权利

174
00:06:27,440 --> 00:06:29,120
so complete it so once you have
所以完成它所以一旦你

175
00:06:29,120 --> 00:06:31,759
completed yes once you have completed
完成了是的一旦你完成了

176
00:06:31,759 --> 00:06:33,759
you can say that your map
你可以说你的地图

177
00:06:33,759 --> 00:06:36,720
yes your map stores your top view so in
是的你的地图存储你的顶视图所以

178
00:06:36,720 --> 00:06:38,560
order to get the top view from left to
为了从左到右获得顶视图像

179
00:06:38,560 --> 00:06:39,680
right like

180
00:06:39,680 --> 00:06:42,000
the first s4 then s2 then s1 then s3
第一个s4然后s2 然后 s1 然后 s3

181
00:06:42,000 --> 00:06:44,639
then s7 just make sure whatever is like
然后 s7 只需确保无论

182
00:06:44,639 --> 00:06:46,240
is the first element in the map the
是什么都是映射中的第一个元素，

183
00:06:46,240 --> 00:06:48,400
first element in the map will definitely
映射中的第一个元素肯定

184
00:06:48,400 --> 00:06:50,960
be minus two right so just take the
是负二，对吧，所以只需取

185
00:06:50,960 --> 00:06:52,720
value there so the first value that you
那里的值，所以你得到的第一个值

186
00:06:52,720 --> 00:06:54,000
get is
是

187
00:06:54,000 --> 00:06:54,960
four
四，

188
00:06:54,960 --> 00:06:57,039
what's the next minus one so the first
下一个负数是什么 一，所以

189
00:06:57,039 --> 00:06:59,120
value that you will get is
你得到的第一个值是

190
00:06:59,120 --> 00:07:00,960
two next is
二，接下来是

191
00:07:00,960 --> 00:07:03,520
zero the value that you'll get is one
零，你得到的值是一，

192
00:07:03,520 --> 00:07:05,840
next is one the value that you'll get is
接下来是一，你得到的值是

193
00:07:05,840 --> 00:07:07,759
three next is two the value that you'll
三，接下来是二，你

194
00:07:07,759 --> 00:07:08,720
get is
得到的值是

195
00:07:08,720 --> 00:07:11,280
seven so i can say that
七，所以我可以

196
00:07:11,280 --> 00:07:13,759
in this way you can easily get the top
这样说，你可以轻松地获得

197
00:07:13,759 --> 00:07:17,360
view of the binary pre
二进制预的顶视图，

198
00:07:17,360 --> 00:07:19,599
so as always the c plus plus code is on
所以一如既往，c plus plus 代码在

199
00:07:19,599 --> 00:07:21,599
the left and the java code is on the
左边，java 代码在

200
00:07:21,599 --> 00:07:23,520
right so what we are given is basically
右边，所以我们给出的基本上是

201
00:07:23,520 --> 00:07:25,680
the root of the binary tree so initially
二叉树的根，所以 首先，

202
00:07:25,680 --> 00:07:28,479
what we do is we take a vector of int
我们取一个 int 向量

203
00:07:28,479 --> 00:07:30,080
and this is where we're gonna store the
，如果树是空的，我们将在这里存储

204
00:07:30,080 --> 00:07:31,280
top view
顶视图

205
00:07:31,280 --> 00:07:33,280
if the tree is empty we're gonna return
我们将返回

206
00:07:33,280 --> 00:07:35,440
the empty vector or else we'll declare
空向量，否则我们

207
00:07:35,440 --> 00:07:37,360
we're gonna declare a map and a queue
将声明一个映射和一个

208
00:07:37,360 --> 00:07:39,120
which is going to store a pair so in
用于存储一对的队列，因此在

209
00:07:39,120 --> 00:07:41,360
java you can create your own pair class
Java 中，您可以创建自己的一对类，

210
00:07:41,360 --> 00:07:42,840
with root n
根为 n

211
00:07:42,840 --> 00:07:46,000
zero right after that i will enter the
零，之后我将 输入

212
00:07:46,000 --> 00:07:49,120
root and the line initially as zero
根和行最初为零

213
00:07:49,120 --> 00:07:50,800
after that i'll keep on traversing till
之后，我将继续遍历，直到

214
00:07:50,800 --> 00:07:52,400
the q is not empty
q 不为空，

215
00:07:52,400 --> 00:07:55,039
get the topmost node and once you've got
获取最顶层节点，一旦获得

216
00:07:55,039 --> 00:07:57,039
the topmost node get the line number
最顶层节点，获取行号，

217
00:07:57,039 --> 00:07:58,800
once you've got the line number please
一旦获得行号，请

218
00:07:58,800 --> 00:08:01,120
make sure that it doesn't exist on the
制作 确保它不存在于地图上，

219
00:08:01,120 --> 00:08:03,440
map if that line doesn't exist
如果该线不存在，

220
00:08:03,440 --> 00:08:06,160
then you will initialize the node on
那么您将初始化

221
00:08:06,160 --> 00:08:07,840
that map because that's the first time
该地图上的节点，因为这是您第一次

222
00:08:07,840 --> 00:08:10,240
you're visiting any node on that line
访问该线上的任何节点，

223
00:08:10,240 --> 00:08:12,000
after that just take whatever is on the
之后只需获取左侧的任何内容即可 如果

224
00:08:12,000 --> 00:08:14,319
left take whatever is on the right
在右边，就把它

225
00:08:14,319 --> 00:08:16,080
enter into the queue with minus one if
放入减一队列；如果在

226
00:08:16,080 --> 00:08:18,560
it's left enter it into the queue with
左边，就把它放入加

227
00:08:18,560 --> 00:08:20,879
plus one if it's all right once you have
一队列；完成后，

228
00:08:20,879 --> 00:08:23,360
done this iterate on the map right
在地图上迭代，

229
00:08:23,360 --> 00:08:26,400
iterate on the map and make sure you
在地图上迭代，并确保你

230
00:08:26,400 --> 00:08:29,840
enter into your answer vector which was
输入了答案向量 它将

231
00:08:29,840 --> 00:08:32,080
going to store the top view and the
存储顶视图，

232
00:08:32,080 --> 00:08:34,159
value is what you will answer you will
值就是你将要回答的内容，你将

233
00:08:34,159 --> 00:08:36,159
enter into the answer vector and right
输入到答案向量中，

234
00:08:36,159 --> 00:08:38,719
after that you can return the answer
之后你就可以 返回正确的答案，

235
00:08:38,719 --> 00:08:40,320
right

236
00:08:40,320 --> 00:08:42,479
so what will be the time complexity guys
那么时间复杂度是多少呢，

237
00:08:42,479 --> 00:08:45,200
the time complexity will be b go of n
时间复杂度将是b，n

238
00:08:45,200 --> 00:08:46,959
and what will be the space complexity
，空间复杂度是多少，

239
00:08:46,959 --> 00:08:49,600
the space complexity will also be we go
空间复杂度也将是我们从

240
00:08:49,600 --> 00:08:51,440
off n like yeah you're using a q and a
n开始，就像是的，你正在使用q和

241
00:08:51,440 --> 00:08:53,600
map so it's twice of n but yes like in
map，所以它是 n 的两倍，但是是的，就像

242
00:08:53,600 --> 00:08:56,480
generalized way we can call it as b of n
广义上我们可以称它为 n 的 b

243
00:08:56,480 --> 00:08:59,120
and space complexity as b of n
，空间复杂度为 n 的 b

244
00:08:59,120 --> 00:09:01,760
standard question uh can i use the
标准问题呃我可以使用

245
00:09:01,760 --> 00:09:03,920
recursive traversal in order to solve
递归遍历来解决

246
00:09:03,920 --> 00:09:06,640
this problem the answer will be no why
这个问题吗答案是否定的，

247
00:09:06,640 --> 00:09:08,560
because just imagine if you use a
因为想象一下如果你 使用中

248
00:09:08,560 --> 00:09:10,640
inorder traversal first you'll visit
序遍历，首先你会访问

249
00:09:10,640 --> 00:09:12,320
this then you'll visit this then you'll
这个，然后你会访问这个，然后你会

250
00:09:12,320 --> 00:09:14,240
visit this then you'll visit this then
访问这个，然后你会访问这个，然后

251
00:09:14,240 --> 00:09:17,839
you'll visit this so on this line one on
你会访问这个，所以在这一行第一，在

252
00:09:17,839 --> 00:09:20,399
this line one you'll end up visiting
这一行第一，你最终会访问

253
00:09:20,399 --> 00:09:22,720
node six the first time
节点 第一次是六，

254
00:09:22,720 --> 00:09:24,240
whereas the
而

255
00:09:24,240 --> 00:09:26,080
3 was the first node that you should
3 是你应该访问的第一个节点，

256
00:09:26,080 --> 00:09:28,640
have visited that's why the recursive
这就是为什么递归解决

257
00:09:28,640 --> 00:09:31,200
solution cannot work directly you have
方案不能直接工作，你

258
00:09:31,200 --> 00:09:33,839
to introduce another logic of height
必须引入另一个高度逻辑，

259
00:09:33,839 --> 00:09:36,000
also right whenever you are making sure
对吧，无论什么时候你都要确保

260
00:09:36,000 --> 00:09:38,720
that whichever node is on the line like
无论哪个节点都在线上，就像

261
00:09:38,720 --> 00:09:41,279
the guy with the least height on that uh
那个人一样 这条线上的最小高度

262
00:09:41,279 --> 00:09:43,440
on this line will be seen from the top
从顶视图可以看到，

263
00:09:43,440 --> 00:09:44,880
view so i have to introduce another
所以 我必须引入另一种

264
00:09:44,880 --> 00:09:47,120
logic of height that is why i do not
高度逻辑，这就是为什么我不

265
00:09:47,120 --> 00:09:49,120
prefer the recursive way instead i
喜欢递归方式，而是更

266
00:09:49,120 --> 00:09:51,839
prefer the level order traversal that is
喜欢

267
00:09:51,839 --> 00:09:53,760
much more intuitive and you do not have
更直观的层次遍历，你不必

268
00:09:53,760 --> 00:09:56,959
to implement any extra logic on that so
在此基础上实现任何额外的逻辑，所以

269
00:09:56,959 --> 00:09:58,080
i hope you've understood the entire
我希望你已经理解了 完整的

270
00:09:58,080 --> 00:09:59,839
explanation as well as the code just in
解释以及代码，

271
00:09:59,839 --> 00:10:01,680
case you did please please please make
以防万一，请

272
00:10:01,680 --> 00:10:03,279
sure you like this video because it took
确保你喜欢这个视频，因为

273
00:10:03,279 --> 00:10:05,519
a lot of efforts to make this entire
制作整个

274
00:10:05,519 --> 00:10:07,519
tree series also if you wish you can
树系列花费了很多精力，如果你愿意，你

275
00:10:07,519 --> 00:10:09,279
definitely drop in a comment that will
一定可以留下评论，这

276
00:10:09,279 --> 00:10:11,519
keep motivating me to make such further
将会激励我 制作更多这样的

277
00:10:11,519 --> 00:10:13,440
series also if you're new to the channel
系列，如果你是这个频道的新人，

278
00:10:13,440 --> 00:10:14,880
please do consider subscribing because
请考虑订阅，因为

279
00:10:14,880 --> 00:10:16,560
i'm going to bring in such more series
我将在未来推出更多这样的系列，

280
00:10:16,560 --> 00:10:18,720
in the upcoming future as well with this

281
00:10:18,720 --> 00:10:20,079
uh let's wrap up this video let's speed
嗯，让我们结束这个视频，让我们快速进入

282
00:10:20,079 --> 00:10:21,279
in the next lecture bye take care
下一个讲座，再见

283
00:10:21,279 --> 00:10:25,560
whenever your heart is
无论何时，都要小心你的心

284
00:10:25,590 --> 00:10:31,249
[Music]
[音乐]

