# 🚀 DateGazer Universal Links - 快速开始指南

## ✅ 已创建完成

您的独立Universal Links网站项目已经创建完成！当前位置：
```
/Users/gigass/DEVELOP/GitHub/DateGazer/dategazer-website/
```

## 📁 项目文件结构

```
dategazer-website/
├── index.html                          # 应用官网主页
├── apple-app-site-association          # Universal Links配置文件
├── .well-known/
│   └── apple-app-site-association      # 备份配置文件
├── README.md                           # 详细项目说明
├── CONFIG.md                           # 配置修改指南
├── deploy.sh                           # 一键部署脚本
├── .gitignore                          # Git忽略文件
└── QUICK_START.md                      # 本文件
```

## 🔥 一键部署（推荐）

最简单的方式是使用自动部署脚本：

```bash
# 1. 进入项目目录
cd /Users/gigass/DEVELOP/GitHub/DateGazer/dategazer-website

# 2. 运行部署脚本
./deploy.sh
```

脚本会自动：
- ✅ 设置Git仓库
- ✅ 添加远程仓库地址
- ✅ 提交所有文件
- ✅ 推送到GitHub
- ✅ 显示GitHub Pages配置步骤

## 📝 手动部署步骤

如果您喜欢手动控制，可以按以下步骤操作：

### 1. 创建GitHub仓库
在GitHub上创建新仓库，例如：`dategazer-website`

### 2. 推送代码
```bash
# 添加远程仓库
git remote add origin https://github.com/YOUR_USERNAME/dategazer-website.git

# 推送代码
git push -u origin main
```

### 3. 启用GitHub Pages
1. 进入仓库设置：`https://github.com/YOUR_USERNAME/dategazer-website/settings/pages`
2. Source选择："Deploy from a branch"
3. Branch选择："main"
4. Folder选择："/ (root)"
5. 点击"Save"

### 4. 访问网站
您的网站将在以下地址可用：
```
https://YOUR_USERNAME.github.io/dategazer-website/
```

## 🌐 自定义域名（可选）

如果您有自己的域名，可以配置自定义域名：

### 1. GitHub Pages设置
- 在Pages设置中的"Custom domain"输入：`dategazer.app`
- 勾选"Enforce HTTPS"

### 2. DNS配置
在您的域名注册商添加CNAME记录：
```
类型: CNAME
名称: @
值: YOUR_USERNAME.github.io
```

## ⚙️ 配置修改

### 重要：Team ID配置
当前配置使用的Team ID是 `D656GS6DUT`，如果您的不同，请：

1. 查看 `CONFIG.md` 文件获取详细说明
2. 修改 `apple-app-site-association` 文件中的Team ID
3. 修改 `.well-known/apple-app-site-association` 文件中的Team ID

### 应用商店链接
编辑 `index.html` 文件，修改App Store和Play Store链接。

## ✅ 验证部署

部署完成后，验证配置：

1. **访问网站**: 确保网站正常显示
2. **验证Universal Links**: https://branch.io/resources/aasa-validator/
3. **测试回调**: 在Safari访问 `https://yourdomain.com/wechat/test`

## 📱 微信开放平台配置

部署完成后，在微信开放平台配置：
- Universal Link: `https://yourdomain.com/wechat/`
- 确保域名与您部署的域名一致

## 🔧 故障排查

### 常见问题：
1. **Universal Links不工作**: 检查HTTPS和配置文件格式
2. **微信回调失败**: 确认Universal Link配置一致
3. **GitHub Pages构建失败**: 检查文件命名和权限

### 获取帮助：
- 查看 `README.md` 获取详细说明
- 查看 `CONFIG.md` 了解配置选项
- 检查GitHub Pages构建日志

## 🎉 完成！

恭喜！您现在拥有一个完全独立的Universal Links网站项目，可以：

- ✅ 支持微信登录回调
- ✅ 提供应用下载页面  
- ✅ 完全与主项目分离
- ✅ 可以安全地公开部署
- ✅ 易于维护和更新

---

**下一步**：运行 `./deploy.sh` 开始部署！🚀