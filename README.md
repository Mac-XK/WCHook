# BoxHook - WeChat Enhancement Plugin

[中文](#中文文档) | [English](#english-documentation)

---

## 中文文档

### 项目简介

BoxHook 是一个基于 Theos/Logos 框架开发的微信增强插件，专为越狱 iOS 设备设计。该插件通过 Method Swizzling 技术对微信应用进行功能扩展和界面定制，提供了多种实用功能。

### 主要功能

#### 1. 🎨 界面定制
- **底部导航栏图标替换**：将微信原生的底部导航栏图标替换为 iOS 系统图标
  - 微信 → 铃铛图标 (`bell.fill`)
  - 通讯录 → 文件夹图标 (`folder.fill.badge.person.crop`)
  - 发现 → 星光图标 (`sparkles`)
  - 我 → 个人图标 (`person.fill.viewfinder`)
- **动画效果**：图标具有缩放动画效果，增强视觉体验

#### 2. 📞 通话功能增强
- **CallKit 支持**：强制启用 iOS CallKit 功能
- **VoIP 推送优化**：优化语音通话的推送通知体验

#### 3. ⚙️ 设置面板扩展
- **魔盒助手**：在微信设置页面添加自定义设置入口
- **功能分类**：
  - 语音电话设置
  - 娱乐功能
  - 问题反馈
- **开关控制**：提供 CallKit 功能的开关控制

### 技术架构

#### 开发框架
- **Theos**：iOS 越狱开发框架
- **Logos**：Method Swizzling 预处理器
- **Substrate**：运行时 Hook 框架

#### 核心技术
- **Method Swizzling**：运行时方法替换
- **Runtime Hook**：动态方法拦截
- **UI 注入**：界面元素动态添加

#### 项目结构
```
BoxHook/
├── BoxHook/
│   ├── wechatHook.xm          # 主要 Hook 代码
│   ├── wechatHook.mm          # 编译后的 Objective-C++ 代码
│   ├── Header/                # 微信类头文件
│   │   ├── MMTabBarItemView.h
│   │   ├── NewSettingViewController.h
│   │   └── ...
│   └── Package/               # 打包配置
│       └── DEBIAN/
│           └── control        # 包信息配置
└── BoxHook.xcodeproj/         # Xcode 项目文件
```

### Hook 的类和方法

#### 1. VoIPPushKitNotifyService
- `isCallkitAvailable` → 强制返回 `true`
- `isDeviceCallkitAvailable` → 强制返回 `true`

#### 2. MMTabBarItemView
- `reloadIconImage` → 替换底部导航栏图标
- `initWithItem:frame:` → 初始化时应用图标替换

#### 3. NewSettingViewController
- `reloadTableData` → 添加"魔盒助手"设置项
- 新增多个 TableView 相关方法用于自定义设置界面

### 安装要求

- iOS 设备已越狱
- 支持 iOS 13.0 及以上版本
- 依赖 MobileSubstrate 框架
- 需要安装在真机设备（不支持模拟器）

### 编译说明

1. 确保已安装 Theos 开发环境
2. 配置正确的 iOS SDK 路径
3. 使用 Xcode 或命令行编译项目
4. 生成的 `.dylib` 文件将注入到微信进程中

### 注意事项

⚠️ **重要提醒**：
- 此插件仅供学习和研究使用
- 使用前请备份重要数据
- 可能影响微信的正常功能
- 微信更新可能导致插件失效
- 使用风险自负

---

## English Documentation

### Project Overview

BoxHook is a WeChat enhancement plugin developed using the Theos/Logos framework, designed specifically for jailbroken iOS devices. This plugin extends WeChat's functionality and customizes its interface through Method Swizzling techniques, providing various practical features.

### Key Features

#### 1. 🎨 Interface Customization
- **Bottom Navigation Bar Icon Replacement**: Replaces WeChat's native bottom navigation icons with iOS system icons
  - WeChat → Bell icon (`bell.fill`)
  - Contacts → Folder icon (`folder.fill.badge.person.crop`)
  - Discover → Sparkles icon (`sparkles`)
  - Me → Person icon (`person.fill.viewfinder`)
- **Animation Effects**: Icons feature scaling animations for enhanced visual experience

#### 2. 📞 Call Function Enhancement
- **CallKit Support**: Force enables iOS CallKit functionality
- **VoIP Push Optimization**: Optimizes push notification experience for voice calls

#### 3. ⚙️ Settings Panel Extension
- **Magic Box Assistant**: Adds custom settings entry in WeChat settings page
- **Feature Categories**:
  - Voice call settings
  - Entertainment features
  - Feedback options
- **Toggle Controls**: Provides switch control for CallKit functionality

### Technical Architecture

#### Development Framework
- **Theos**: iOS jailbreak development framework
- **Logos**: Method Swizzling preprocessor
- **Substrate**: Runtime Hook framework

#### Core Technologies
- **Method Swizzling**: Runtime method replacement
- **Runtime Hook**: Dynamic method interception
- **UI Injection**: Dynamic addition of interface elements

#### Project Structure
```
BoxHook/
├── BoxHook/
│   ├── wechatHook.xm          # Main Hook code
│   ├── wechatHook.mm          # Compiled Objective-C++ code
│   ├── Header/                # WeChat class header files
│   │   ├── MMTabBarItemView.h
│   │   ├── NewSettingViewController.h
│   │   └── ...
│   └── Package/               # Package configuration
│       └── DEBIAN/
│           └── control        # Package info configuration
└── BoxHook.xcodeproj/         # Xcode project file
```

### Hooked Classes and Methods

#### 1. VoIPPushKitNotifyService
- `isCallkitAvailable` → Force returns `true`
- `isDeviceCallkitAvailable` → Force returns `true`

#### 2. MMTabBarItemView
- `reloadIconImage` → Replaces bottom navigation bar icons
- `initWithItem:frame:` → Applies icon replacement during initialization

#### 3. NewSettingViewController
- `reloadTableData` → Adds "Magic Box Assistant" settings item
- Multiple new TableView-related methods for custom settings interface

### Installation Requirements

- Jailbroken iOS device
- iOS 13.0 or later support
- MobileSubstrate framework dependency
- Must be installed on physical device (simulator not supported)

### Build Instructions

1. Ensure Theos development environment is installed
2. Configure correct iOS SDK path
3. Compile project using Xcode or command line
4. Generated `.dylib` file will be injected into WeChat process

### Important Notes

⚠️ **Important Reminder**:
- This plugin is for educational and research purposes only
- Please backup important data before use
- May affect WeChat's normal functionality
- WeChat updates may cause plugin to malfunction
- Use at your own risk

---

### License

This project is for educational purposes only. Please respect WeChat's terms of service and applicable laws.

### Contributing

Contributions are welcome! Please feel free to submit issues and pull requests.

### Contact

- Author: MacXK
- Package: com.MacXK.wechatHook
- Version: 0.1-1
