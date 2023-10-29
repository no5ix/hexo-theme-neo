# A optimized hexo-theme-next

**一个优化过的NexT主题.** 

我修改了很多[NexT](https://github.com/iissnan/hexo-theme-next)的代码来对原版 NexT 做了优化, 如下 : 

- 改了NexT的很多地方来优化移动端的表现
    - header的布局
    - 移动端和PC端的侧边栏更加统一
    - 移动端的文章目录列表现在可以滑动了
- 添加了文章加密的支持
- 升级到了fancybox3并完成适配, 3更流畅且拥有更多效果
- 重做了本地搜索引擎
    - 现在移动端不会经常无故弹不出键盘了
    - 也不会列出加密文章的内容了
    - 更优雅的过渡动画
- 添加了headroom支持, 现在有一个可以会自动隐藏的header了, 往下滚一下鼠标则隐藏, 往上则出现


# Live Preview

[My Blog](https://hulinhong.com)


# Usage

<!-- 0\. Install [Hexo](https://hexo.io/docs/index.html)  
    安装 [Hexo](https://hexo.io/zh-cn/docs/) -->
0\. [点击这里下载node.js的10.13.0的版本](https://nodejs.org/en/blog/release/v10.13.0), 尝试`node -v`, 这个node版本很关键, 不要乱改

1\. Delete my `source` folder  
    删除我项目中的 `source` 文件夹

2\. Create a new `source` folder  
    新建一个 `source` 文件夹
    
2.5\. `npm install -g hexo-cli`然后再`npm install --force`
    
3\. Unzip `my_node_modules.tar.gz` to the current directory: `tar -zxvf my_node_modules.tar.gz`
    解压 `my_node_modules.tar.gz` 到当前目录(确保这一步在安装了hexo之后): `tar -zxvf my_node_modules.tar.gz`

4\. Learn [Hexo's base usage](https://hexo.io/docs/index.html) for Writing/Generating/Deployment  
    学习[Hexo的基本操作](https://hexo.io/zh-cn/docs/index.html)来写作/生成/部署

5\. Learn [NexT](http://theme-next.iissnan.com/getting-started.html)  
    学习 [NexT](http://theme-next.iissnan.com/getting-started.html)

6\. Modify ` /_config.yml ` & ` /themes/next/_config.yml `  
    修改 ` /_config.yml ` 和 ` /themes/next/_config.yml `

7\. `hexo clean`删除缓存

8\. `hexo generate`生成静态文件

9\. `hexo server`启动一个本地hexo服务器