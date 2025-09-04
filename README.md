# DateGazer Universal Links 网站

这是DateGazer应用的官方网站，专门用于支持Universal Links和应用下载。

## 🌟 功能特性

- **Universal Links支持**: 支持微信登录回调和深度链接
- **智能应用下载**: 自动检测设备类型并引导下载
- **现代化设计**: 响应式设计，支持各种设备
- **SEO优化**: 搜索引擎友好的页面结构

## 📱 支持的链接类型

- `/wechat/*` - 微信登录回调
- `/auth/*` - 通用认证回调  
- `/share/*` - 分享功能
- `/deeplink/*` - 深度链接

## 🚀 快速部署

### GitHub Pages部署

1. **创建GitHub仓库**:
   ```bash
   git init
   git add .
   git commit -m "Initial commit: DateGazer Universal Links website"
   git branch -M main
   git remote add origin https://github.com/YOUR_USERNAME/dategazer-website.git
   git push -u origin main
   ```

2. **启用GitHub Pages**:
   - 进入仓库Settings → Pages
   - Source选择"Deploy from a branch"
   - Branch选择"main"，folder选择"/ (root)"
   - 保存设置

3. **配置自定义域名** (可选):
   - 在Pages设置中添加域名：`dategazer.app`
   - 配置DNS CNAME记录指向：`YOUR_USERNAME.github.io`

## 📋 文件说明

- `index.html` - 主页面，包含应用介绍和智能下载
- `apple-app-site-association` - Apple Universal Links配置文件
- `.well-known/apple-app-site-association` - 备份配置文件

## 🔧 配置说明

### Universal Links配置

应用Bundle ID: `com.gigass.dategazer`
Team ID: `D656GS6DUT`

支持的路径模式:
- `/wechat/*` - 微信登录回调
- `/auth/*` - 通用认证
- `/share/*` - 分享功能
- `/deeplink/*` - 深度链接

### 验证配置

部署后可以使用以下工具验证：
- [Apple Association File Validator](https://branch.io/resources/aasa-validator/)
- 在iOS Safari中访问 `https://your-domain.com/wechat/test`

## 🛠️ 自定义修改

### 更改应用信息
编辑 `index.html` 中的以下内容：
- 应用名称和描述
- App Store/Play Store链接
- 品牌颜色和样式

### 更改Bundle ID
如果需要更改Bundle ID，需要同时修改：
1. `apple-app-site-association` 文件中的 `appIDs`
2. `.well-known/apple-app-site-association` 文件

## 📞 支持

如果您在部署过程中遇到问题，请检查：
1. HTTPS是否正确配置
2. apple-app-site-association文件格式是否正确
3. DNS配置是否正确解析

---

© 2024 DateGazer. All rights reserved.