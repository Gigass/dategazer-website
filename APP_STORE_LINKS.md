# iOS App Store 必需链接

## 🏪 App Store Connect 配置

在提交DateGazer应用到App Store时，需要在App Store Connect中填写以下链接：

### 📋 必填链接

#### 1. 隐私政策 URL
```
https://yourdomain.com/privacy-policy.html
```

#### 2. 服务条款 URL (可选但推荐)
```
https://yourdomain.com/terms-of-service.html
```

#### 3. 应用支持 URL
```
https://yourdomain.com/
```

#### 4. 营销 URL (可选)
```
https://yourdomain.com/
```

## 🔧 配置步骤

### 1. 部署网站
首先确保您已经将网站部署到公开可访问的域名：

```bash
# 使用自动部署脚本
./deploy.sh

# 或者手动部署到您的域名
```

### 2. App Store Connect 配置
1. 登录 [App Store Connect](https://appstoreconnect.apple.com)
2. 选择您的应用
3. 进入"应用信息"页面
4. 在"一般信息"部分填写：
   - **隐私政策URL**: `https://yourdomain.com/privacy-policy.html`
   - **Apple TV隐私政策**: 同上（如果支持tvOS）

5. 在"版本信息"中的"支持URL"填写：
   - **支持URL**: `https://yourdomain.com/`

### 3. 应用审核信息
在提交审核时，可以在"审核信息"中的"备注"部分添加：

```
应用相关链接：
- 隐私政策：https://yourdomain.com/privacy-policy.html  
- 服务条款：https://yourdomain.com/terms-of-service.html
- 技术支持：support@dategazer.app

本应用主要功能：
- 纪念日管理和提醒
- 个人数据本地存储
- 可选的iCloud同步
- 微信/Apple ID登录（OAuth授权）
```

## ✅ 验证清单

部署前请确保：

- [ ] 隐私政策页面可正常访问
- [ ] 服务条款页面可正常访问  
- [ ] 主页面显示正常
- [ ] 所有链接都使用HTTPS
- [ ] 页面在移动设备上显示正常
- [ ] 隐私政策内容符合当地法规

## 📱 隐私政策要点

我们的隐私政策涵盖了以下iOS App Store要求的关键点：

### ✅ 已包含内容
- 数据收集类型和目的
- 数据使用方式
- 数据共享政策
- 用户权利说明
- 数据安全措施
- 儿童隐私保护
- 联系方式

### 🔍 特殊说明
- **本地存储优先**: 强调数据主要存储在用户设备
- **第三方服务**: 明确说明Apple ID和微信登录的数据处理
- **可选同步**: iCloud同步为用户可选功能
- **数据控制权**: 用户可随时删除数据

## 🌐 多语言支持

如果您的应用支持多种语言，建议创建对应的隐私政策：

```
- privacy-policy-en.html (英文版)
- privacy-policy-ja.html (日文版)  
- privacy-policy.html (中文版，默认)
```

## 🔧 维护建议

### 定期检查
- 每季度检查链接可用性
- 政策变更时及时更新
- 监控页面访问情况

### 法规遵循
- 关注隐私法规变化
- 根据新功能更新政策
- 保持联系方式有效

## 📞 紧急联系

如果在App Store审核过程中遇到链接相关问题：

1. **检查域名解析**: 确保域名指向正确
2. **验证HTTPS证书**: 确保SSL证书有效
3. **测试页面加载**: 从不同网络测试访问
4. **联系支持**: 如有技术问题可联系相关技术支持

---

**重要提醒**: 在提交App Store审核前，请确保所有链接都已正确配置并可正常访问！