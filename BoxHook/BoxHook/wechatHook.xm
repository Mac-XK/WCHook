// See http://iphonedevwiki.net/index.php/Logos

#if TARGET_OS_SIMULATOR
#error Do not support the simulator, please use the real iPhone Device.
#endif

#pragma mark - 系统调用
#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

#pragma mark - 方法实现

#pragma mark - 微信文件
#import "MMTabBarItemView.h"
#import "WCTableViewManager.h"
#import "NewSettingViewController.h"
#import "WCTableViewNormalCellManager.h"
#import "WCTableViewCellManager.h"
#import "WCTableViewSectionManager.h"
#import "MMTableView.h"

@interface MMWebImageView : UIView
@property (nonatomic, strong) UIImage *image;
@end

#pragma mark callkit功能

%hook VoIPPushKitNotifyService

- (BOOL)isCallkitAvailable {
    //return [ButtonOptions sharedConfig].callKitEnable;
    return true;
}

- (BOOL)isDeviceCallkitAvailable {
    //return [ButtonOptions sharedConfig].callKitEnable;
    return true;
}

%end

#pragma mark - 微信首页图标
%hook MMTabBarItemView

- (void)reloadIconImage {
    %orig;
    UIImage *image;
    if (@available(iOS 13.0, *)) {
        if ([self.textLabel.text isEqualToString:@"微信"]) {
            image = [UIImage systemImageNamed:@"bell.fill"];
        } else if ([self.textLabel.text isEqualToString:@"通讯录"]) {
            image = [UIImage systemImageNamed:@"folder.fill.badge.person.crop"];
        } else if ([self.textLabel.text isEqualToString:@"发现"]) {
            image = [UIImage systemImageNamed:@"sparkles"];
        } else if ([self.textLabel.text isEqualToString:@"我"]) {
            image = [UIImage systemImageNamed:@"person.fill.viewfinder"];
        }
    }
    
    if (image) {
        [self.imageView setImage:image];
        self.imageView.contentMode = UIViewContentModeScaleAspectFit;
        
        [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat animations:^{
            self.imageView.transform = CGAffineTransformMakeScale(1.5, 1.5);
        } completion:nil];
    }
}

// 确保初始化时创建拖动按钮
- (id)initWithItem:(id)arg1 frame:(struct CGRect)arg2 {
    id result = %orig;
    [self reloadIconImage];
    return result;
}

%end

#pragma mark - 微信设置分类
// 移除父类声明
%class NewSettingViewController;
%hook NewSettingViewController

- (void)reloadTableData{
    %orig;
    WCTableViewManager *tableViewMgr = MSHookIvar<id>(self, "m_tableViewMgr");
    MMTableView *tableView = [tableViewMgr getTableView];
    WCTableViewNormalCellManager *newCell = [%c(WCTableViewNormalCellManager) normalCellForSel:@selector(handleSetting) target:self title:@"魔盒助手"];
    [((WCTableViewSectionManager*)tableViewMgr.sections[0]) addCell: newCell];
    [tableView reloadData];
}

%new
- (void)handleSetting {
    UIViewController *vc = [[UIViewController alloc] init];
    vc.title = @"内测版";
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:vc.view.bounds style:UITableViewStyleGrouped];
    tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    tableView.delegate = (id<UITableViewDelegate>)self;  // 添加类型转换
    tableView.dataSource = (id<UITableViewDataSource>)self;  // 添加类型转换
    [vc.view addSubview:tableView];
    
    // 版本号标签和约束代码保持不变
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    UIViewController *selfVC = (UIViewController *)self;
    [selfVC presentViewController:nav animated:YES completion:nil];
}

// 修改协议声明
%new
@interface NewSettingViewController (TableViewSupport) <UITableViewDelegate, UITableViewDataSource>
- (NSArray<NSArray<NSString *> *> *)cellTitles;
- (void)handleSetting;
- (void)handleHomeIconClick;
@end

// 确保numberOfSectionsInTableView返回正确值
%new
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3; // 确保返回3个section
}

// 修正section标题方法
%new
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    NSArray *sectionTitles = @[@"语音电话", @"娱乐功能", @"问题反馈"];
    return sectionTitles[section]; // 直接返回对应section的标题
}

// 确保cellTitles方法返回正确的数据结构
// 修改cellTitles方法
%new
- (NSArray<NSArray<NSString *> *> *)cellTitles {
    static NSArray<NSArray<NSString *> *> *sectionTitles = @[
        @[@"callkit"],
        @[@"小游戏"],
        @[@"打赏一下"]
    ];
    return sectionTitles;
}

// 修改numberOfRowsInSection方法
%new
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self cellTitles][section].count;
}

// 简化cellForRowAtIndexPath方法
%new
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        if (@available(iOS 13.0, *)) {
            cell.backgroundColor = [UIColor secondarySystemGroupedBackgroundColor];
        } else {
            cell.backgroundColor = [UIColor whiteColor];
        }
        cell.selectionStyle = UITableViewCellSelectionStyleDefault;
    }

    // 配置单元格内容
    NSArray<NSString *> *titles = [self cellTitles][indexPath.section];
    cell.textLabel.text = titles[indexPath.row];
    
    // 为callkit单元格添加开关
    if (indexPath.section == 0 && indexPath.row == 0) {
        UISwitch *switchView = [[UISwitch alloc] init];
        [switchView setOn:YES animated:NO];
        [switchView addTarget:self action:@selector(handleSwitchValueChanged:) forControlEvents:UIControlEventValueChanged];
        cell.accessoryView = switchView;
    } else {
        // 移除其他单元格的accessoryType
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    
    return cell;
}

%new
- (void)handleSwitchValueChanged:(UISwitch *)sender {
//    // 强制同步NSUserDefaults
//    [[NSUserDefaults standardUserDefaults] synchronize];
//    
//    // 根据开关状态执行不同操作
//    if (sender.on) {
//        [ButtonOptions sharedConfig].callKitEnable = YES;
//    } else {
//        [ButtonOptions sharedConfig].callKitEnable = NO;
//    }
}

%end
