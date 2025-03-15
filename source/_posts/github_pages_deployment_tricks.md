---
title: GitHub pages deployment tricks
date: 2025-02-14 16:40:54
tags:
- GitHub
categories:
- Misc
---


> [reference](https://juejin.cn/post/7312035956189020169)

# 背景

之前个人博客都是基于 [VuePress](https://link.juejin.cn?target=https%3A%2F%2Fv2.vuepress.vuejs.org%2Fzh%2F "https://v2.vuepress.vuejs.org/zh/")，直接整个项目上传到 Github 公共仓库中，然后利用 [Github Actions](https://link.juejin.cn?target=https%3A%2F%2Fdocs.github.com%2Fen%2Factions "https://docs.github.com/en/actions") 直接构建到仓库中的一个分支上，再把这个分支部署到 [Github Pages](https://link.juejin.cn?target=https%3A%2F%2Fpages.github.com%2F "https://pages.github.com/") 上，就这样用了很久，但是一直有几个问题比较困扰：

- 源码公开可见，可以被随意复制粘贴到别的地方
- 修改记录一览无遗，没有隐私性
- 部分文档不想公开，即使删除后，仍能通过提交记录找回来

综上，网上搜索一番后，发现可以通过 GitHub 创建私有仓库，把源码提交到私有仓库后，通过 Actions 触发自动构建，并推送到一个公开仓库中，再在公开仓库中触发 Github Pages 的部署流程，完成博客更新发布的自动化流程。

![alt text](/img/github_pages_deployment_tricks/image.png)

> GitHub Actions 是 GitHub 提供的一种自动化工作流服务，用于构建、测试和部署项目。它允许你在代码仓库中配置和运行自动化的工作流程，以响应各种事件，比如代码推送、Pull 请求合并等。GitHub Actions 可以帮助团队自动化软件开发过程中的重复性任务，提高效率并确保代码的质量。
> 
> GitHub Pages 是 GitHub 提供的一项免费静态网站托管服务。它允许你使用 GitHub 仓库来托管和发布个人、项目或组织的静态网页。


# 折腾

首先我们需要在 Github 创建一个私有的仓库叫 private_repo，并将本地的 Vuepress 博客项目和 private_repo 关联起来：

```
git remote add origin https://github.com/<username>/private_repo
```

然后修改博客项目根目录下 `.github/workflows/deploy.yml`文件，在 workflows 目录下的文件都会被尝试解析为工作流。

```yaml
# 工作流名称
name: Publish Blog

# 当推送到 main 分支时触发任务
on:
  push:
    branches:
      - main

# 工作流
jobs:
  # 名称   
  build-and-push:
    # 运行环境
    runs-on: ubuntu-latest
    # 步骤
    steps:
      - name: 检出项目
        uses: actions/checkout@v4
        with:
          # 拉取记录数，因为只需要基于最新的版本构建，所以设为1就好
          fetch-depth: 1

      # 下面三个步骤是 VuePress 的构建流程，根据不同 Static Site Generators 自定义 
      - name: 安装 pnpm
        uses: pnpm/action-setup@v2
        with:
          version: 8
          run_install: true


      - name: 设置 Node.js
        uses: actions/setup-node@v4
        with:
          node-version: 18
          cache: pnpm


      - name: 构建文档
        env:
          NODE_OPTIONS: --max_old_space_size=8192
        run: |-
          pnpm run docs:build
          > src/.vuepress/dist/.nojekyll
     
      # 关键步骤：利用这个 action 将生成的文档 push 到指定仓库
      - name: 部署到公共仓库
        uses: peaceiris/actions-gh-pages@v3
        with:
          # Personal Access Token 下面讲 
          personal_token: ${{ secrets.PUBLISH_BLOG }}
          # 指定push的仓库  
          external_repository: <username>/public_repo
          # 指定push的分支
          publish_branch: main
          # push 的目录
          publish_dir: src/.vuepress/dist
          # 是否只保留最新的提交记录
          force_orphan: true
```

然后我们再到 Github 上创建一个公共仓库 public_repo，然后到 用户的(不是仓库的) `Settings` -> `developer settings` -> `Personal access tokens` -> `Fine-grained tokens` 创建一个 Personal Access Token（PAT）。这里 Github 提供了两种 PAT：

- **Fine-grained tokens**：细粒度的访问令牌，可以指定适用的仓库
- **Tokens**：经典访问令牌，无法指定具体仓库，粒度较粗

![alt text](/img/github_pages_deployment_tricks/image-1.png)

推荐使用新的 Fined-grained tokens，更加安全。给予这个 token 公共仓库 public_repo 的读写权限即可，生成后记得复制一下 token，因为关闭页面后这个 token 就看不到值了。

然后我们到 **private_repo** 的 Settings -> Secrets and variables -> Actions 页面，创建一个 Secret，名称任意，value 就填刚刚生成的 PAT 即可。

![alt text](/img/github_pages_deployment_tricks/image-2.png)

这一步的原因在于，Github Actions 是在一个容器里运行的，因此要推送代码到某个仓库前必须通过某种方式验证对这个仓库有读写权限。上一步创建的 PAT 正好就授予了 public_repo 的读写权限，因此 private_repo 这个仓库在执行 Github Actions 时，可以通过

```
${{ secrets.<secret_name> }}
```

这样的形式来引用这个 PAT，进而通过权限系统的校验。

最后，我们把本地的 VuePress 项目推送到 private_repo，就会自动触发构建流程推送到 public_repo 了，记得在 public_repo 中开启 Github Pages，从主分支的根目录执行部署即可。

![alt text](/img/github_pages_deployment_tricks/image-3.png)