# 配置说明

## 🔧 重要配置项

### 1. Apple Developer Team ID
当前配置的Team ID是 `D656GS6DUT`，如果您使用不同的Apple Developer账户，需要修改以下文件：

**文件位置**: `apple-app-site-association` 和 `.well-known/apple-app-site-association`

**修改内容**:
```json
{
  "applinks": {
    "details": [
      {
        "appIDs": [ "YOUR_TEAM_ID.com.gigass.dategazer" ],
        // 将 D656GS6DUT 替换为您的Team ID
      }
    ]
  },
  "webcredentials": {
    "apps": [ "YOUR_TEAM_ID.com.gigass.dategazer" ]
  }
}
```

### 2. Bundle ID
当前配置的Bundle ID是 `com.gigass.dategazer`，如果您使用不同的Bundle ID，需要修改：

**修改示例**:
```json
"appIDs": [ "YOUR_TEAM_ID.com.yourcompany.yourapp" ]
```

### 3. 域名配置
当前配置支持 `dategazer.app` 域名，如果您使用不同的域名：

1. **在iOS应用的entitlements文件中**修改：
   ```xml
   <key>com.apple.developer.associated-domains</key>
   <array>
       <string>applinks:yourdomain.com</string>
       <string>applinks:www.yourdomain.com</string>
   </array>
   ```

2. **在微信开放平台中**修改Universal Link：
   ```
   https://yourdomain.com/wechat/
   ```

### 4. 应用商店链接
编辑 `index.html` 文件，修改以下链接：

```javascript
// iOS App Store链接
window.location.href = 'https://apps.apple.com/app/your-app-id';

// Google Play链接  
window.location.href = 'https://play.google.com/store/apps/details?id=com.yourcompany.yourapp';
```

## 🔍 如何获取Team ID

1. 登录 [Apple Developer Portal](https://developer.apple.com)
2. 进入 "Membership" 页面
3. 找到 "Team ID" 字段

或者在Xcode中：
1. 选择您的项目
2. 在 "Signing & Capabilities" 标签页
3. 查看 "Team" 下拉菜单中显示的ID

## ✅ 配置验证

修改配置后，使用以下工具验证：

1. **Apple AASA验证器**: https://branch.io/resources/aasa-validator/
2. **iOS设备测试**: 在Safari中访问 `https://yourdomain.com/wechat/test`
3. **Xcode控制台**: 查看Universal Links处理日志

## 📝 配置检查清单

- [ ] 修改apple-app-site-association文件中的Team ID
- [ ] 修改.well-known/apple-app-site-association文件中的Team ID  
- [ ] 更新Bundle ID (如果不同)
- [ ] 修改应用商店链接
- [ ] 配置DNS指向GitHub Pages
- [ ] 在微信开放平台配置Universal Link
- [ ] 使用验证工具测试配置

## ⚠️ 注意事项

1. **HTTPS必须**: Universal Links只在HTTPS域名下工作
2. **文件位置**: apple-app-site-association文件必须在域名根目录
3. **无扩展名**: apple-app-site-association文件不能有.json扩展名
4. **缓存问题**: iOS会缓存配置，测试时可能需要卸载重装应用