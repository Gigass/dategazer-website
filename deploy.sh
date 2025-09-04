#!/bin/bash

# DateGazer Universal Links 网站部署脚本

set -e

echo "🚀 DateGazer Universal Links 网站部署脚本"
echo "========================================="

# 检查是否在正确的目录
if [ ! -f "index.html" ]; then
    echo "❌ 错误：请在项目根目录运行此脚本"
    exit 1
fi

echo "📁 当前目录文件："
ls -la

# 检查Git是否初始化
if [ ! -d ".git" ]; then
    echo "🔧 初始化Git仓库..."
    git init
    echo "✅ Git仓库初始化完成"
fi

# 检查是否有远程仓库
if ! git remote get-url origin > /dev/null 2>&1; then
    echo ""
    echo "🔗 请输入您的GitHub仓库地址 (例如: https://github.com/username/dategazer-website.git):"
    read -r repo_url
    
    if [ -n "$repo_url" ]; then
        git remote add origin "$repo_url"
        echo "✅ 已添加远程仓库: $repo_url"
    else
        echo "⚠️  跳过远程仓库设置"
    fi
fi

# 添加所有文件并提交
echo "📦 添加文件到Git..."
git add .

# 检查是否有需要提交的更改
if git diff --cached --quiet; then
    echo "ℹ️  没有需要提交的更改"
else
    echo "💾 提交更改..."
    commit_message="Deploy DateGazer Universal Links website

✨ 功能:
- Universal Links支持 (微信登录回调)
- 智能应用下载页面
- apple-app-site-association配置
- 响应式现代化设计

🌐 支持的路径:
- /wechat/* (微信登录回调)
- /auth/* (通用认证)
- /share/* (分享功能)
- /deeplink/* (深度链接)

🚀 部署时间: $(date)"

    git commit -m "$commit_message"
    echo "✅ 提交完成"
fi

# 设置主分支
if git branch | grep -q "main"; then
    echo "ℹ️  已在main分支"
else
    echo "🔄 切换到main分支..."
    git branch -M main
fi

# 推送到GitHub
if git remote get-url origin > /dev/null 2>&1; then
    echo "🚀 推送到GitHub..."
    if git push -u origin main; then
        echo "✅ 推送成功！"
        echo ""
        echo "🎉 部署完成！"
        echo "========================================="
        echo "📋 下一步操作："
        echo "1. 访问您的GitHub仓库"
        echo "2. 进入 Settings → Pages"
        echo "3. 选择 'Deploy from a branch'"
        echo "4. 选择 'main' 分支和 '/ (root)' 目录"
        echo "5. 保存设置"
        echo ""
        echo "🌐 您的网站将在以下地址可用："
        repo_url=$(git remote get-url origin)
        username=$(echo "$repo_url" | sed -n 's/.*github\.com[:/]\([^/]*\)\/.*/\1/p')
        repo_name=$(echo "$repo_url" | sed -n 's/.*\/\([^/]*\)\.git$/\1/p')
        echo "   https://$username.github.io/$repo_name"
        echo ""
        echo "🔧 如需自定义域名，请在GitHub Pages设置中配置"
    else
        echo "❌ 推送失败，请检查网络连接和仓库权限"
        exit 1
    fi
else
    echo "⚠️  未设置远程仓库，请手动推送："
    echo "   git remote add origin YOUR_REPO_URL"
    echo "   git push -u origin main"
fi

echo ""
echo "🎯 Universal Links验证："
echo "   部署完成后，使用 https://branch.io/resources/aasa-validator/ 验证配置"

echo ""
echo "✨ 部署完成！感谢使用DateGazer！"