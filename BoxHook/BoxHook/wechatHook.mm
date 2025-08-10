#line 1 "/Users/macxk/Desktop/UI调试/BoxHook/BoxHook/wechatHook.xm"


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


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

__asm__(".linker_option \"-framework\", \"CydiaSubstrate\"");

@class VoIPPushKitNotifyService; @class WCTableViewNormalCellManager; @class NewSettingViewController; @class MMTabBarItemView; 
static BOOL (*_logos_orig$_ungrouped$VoIPPushKitNotifyService$isCallkitAvailable)(_LOGOS_SELF_TYPE_NORMAL VoIPPushKitNotifyService* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$VoIPPushKitNotifyService$isCallkitAvailable(_LOGOS_SELF_TYPE_NORMAL VoIPPushKitNotifyService* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$VoIPPushKitNotifyService$isDeviceCallkitAvailable)(_LOGOS_SELF_TYPE_NORMAL VoIPPushKitNotifyService* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$VoIPPushKitNotifyService$isDeviceCallkitAvailable(_LOGOS_SELF_TYPE_NORMAL VoIPPushKitNotifyService* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$MMTabBarItemView$reloadIconImage)(_LOGOS_SELF_TYPE_NORMAL MMTabBarItemView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$MMTabBarItemView$reloadIconImage(_LOGOS_SELF_TYPE_NORMAL MMTabBarItemView* _LOGOS_SELF_CONST, SEL); static MMTabBarItemView* (*_logos_orig$_ungrouped$MMTabBarItemView$initWithItem$frame$)(_LOGOS_SELF_TYPE_INIT MMTabBarItemView*, SEL, id, struct CGRect) _LOGOS_RETURN_RETAINED; static MMTabBarItemView* _logos_method$_ungrouped$MMTabBarItemView$initWithItem$frame$(_LOGOS_SELF_TYPE_INIT MMTabBarItemView*, SEL, id, struct CGRect) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$_ungrouped$NewSettingViewController$reloadTableData)(_LOGOS_SELF_TYPE_NORMAL NewSettingViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$NewSettingViewController$reloadTableData(_LOGOS_SELF_TYPE_NORMAL NewSettingViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$NewSettingViewController$handleSetting(_LOGOS_SELF_TYPE_NORMAL NewSettingViewController* _LOGOS_SELF_CONST, SEL); static NSInteger _logos_method$_ungrouped$NewSettingViewController$numberOfSectionsInTableView$(_LOGOS_SELF_TYPE_NORMAL NewSettingViewController* _LOGOS_SELF_CONST, SEL, UITableView *); static NSString * _logos_method$_ungrouped$NewSettingViewController$tableView$titleForHeaderInSection$(_LOGOS_SELF_TYPE_NORMAL NewSettingViewController* _LOGOS_SELF_CONST, SEL, UITableView *, NSInteger); static NSArray<NSArray<NSString *> *> * _logos_method$_ungrouped$NewSettingViewController$cellTitles(_LOGOS_SELF_TYPE_NORMAL NewSettingViewController* _LOGOS_SELF_CONST, SEL); static NSInteger _logos_method$_ungrouped$NewSettingViewController$tableView$numberOfRowsInSection$(_LOGOS_SELF_TYPE_NORMAL NewSettingViewController* _LOGOS_SELF_CONST, SEL, UITableView *, NSInteger); static UITableViewCell * _logos_method$_ungrouped$NewSettingViewController$tableView$cellForRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL NewSettingViewController* _LOGOS_SELF_CONST, SEL, UITableView *, NSIndexPath *); static void _logos_method$_ungrouped$NewSettingViewController$handleSwitchValueChanged$(_LOGOS_SELF_TYPE_NORMAL NewSettingViewController* _LOGOS_SELF_CONST, SEL, UISwitch *); 
static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$NewSettingViewController(void) { static Class _klass; if(!_klass) { _klass = objc_getClass(""); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$WCTableViewNormalCellManager(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("WCTableViewNormalCellManager"); } return _klass; }
#line 28 "/Users/macxk/Desktop/UI调试/BoxHook/BoxHook/wechatHook.xm"


static BOOL _logos_method$_ungrouped$VoIPPushKitNotifyService$isCallkitAvailable(_LOGOS_SELF_TYPE_NORMAL VoIPPushKitNotifyService* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return true;
}

static BOOL _logos_method$_ungrouped$VoIPPushKitNotifyService$isDeviceCallkitAvailable(_LOGOS_SELF_TYPE_NORMAL VoIPPushKitNotifyService* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return true;
}



#pragma mark - 微信首页图标


static void _logos_method$_ungrouped$MMTabBarItemView$reloadIconImage(_LOGOS_SELF_TYPE_NORMAL MMTabBarItemView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    _logos_orig$_ungrouped$MMTabBarItemView$reloadIconImage(self, _cmd);
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


static MMTabBarItemView* _logos_method$_ungrouped$MMTabBarItemView$initWithItem$frame$(_LOGOS_SELF_TYPE_INIT MMTabBarItemView* __unused self, SEL __unused _cmd, id arg1, struct CGRect arg2) _LOGOS_RETURN_RETAINED {
    id result = _logos_orig$_ungrouped$MMTabBarItemView$initWithItem$frame$(self, _cmd, arg1, arg2);
    [self reloadIconImage];
    return result;
}



#pragma mark - 微信设置分类

;


static void _logos_method$_ungrouped$NewSettingViewController$reloadTableData(_LOGOS_SELF_TYPE_NORMAL NewSettingViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    _logos_orig$_ungrouped$NewSettingViewController$reloadTableData(self, _cmd);
    WCTableViewManager *tableViewMgr = MSHookIvar<id>(self, "m_tableViewMgr");
    MMTableView *tableView = [tableViewMgr getTableView];
    WCTableViewNormalCellManager *newCell = [_logos_static_class_lookup$WCTableViewNormalCellManager() normalCellForSel:@selector(handleSetting) target:self title:@"魔盒助手"];
    [((WCTableViewSectionManager*)tableViewMgr.sections[0]) addCell: newCell];
    [tableView reloadData];
}


static void _logos_method$_ungrouped$NewSettingViewController$handleSetting(_LOGOS_SELF_TYPE_NORMAL NewSettingViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    UIViewController *vc = [[UIViewController alloc] init];
    vc.title = @"内测版";
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:vc.view.bounds style:UITableViewStyleGrouped];
    tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    tableView.delegate = (id<UITableViewDelegate>)self;  
    tableView.dataSource = (id<UITableViewDataSource>)self;  
    [vc.view addSubview:tableView];
    
    
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    UIViewController *selfVC = (UIViewController *)self;
    [selfVC presentViewController:nav animated:YES completion:nil];
}



@interface NewSettingViewController (TableViewSupport) <UITableViewDelegate, UITableViewDataSource>
- (NSArray<NSArray<NSString *> *> *)cellTitles;
- (void)handleSetting;
- (void)handleHomeIconClick;
@end



static NSInteger _logos_method$_ungrouped$NewSettingViewController$numberOfSectionsInTableView$(_LOGOS_SELF_TYPE_NORMAL NewSettingViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView) {
    return 3; 
}



static NSString * _logos_method$_ungrouped$NewSettingViewController$tableView$titleForHeaderInSection$(_LOGOS_SELF_TYPE_NORMAL NewSettingViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView, NSInteger section) {
    NSArray *sectionTitles = @[@"语音电话", @"娱乐功能", @"问题反馈"];
    return sectionTitles[section]; 
}




static NSArray<NSArray<NSString *> *> * _logos_method$_ungrouped$NewSettingViewController$cellTitles(_LOGOS_SELF_TYPE_NORMAL NewSettingViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    static NSArray<NSArray<NSString *> *> *sectionTitles = @[
        @[@"callkit"],
        @[@"小游戏"],
        @[@"打赏一下"]
    ];
    return sectionTitles;
}



static NSInteger _logos_method$_ungrouped$NewSettingViewController$tableView$numberOfRowsInSection$(_LOGOS_SELF_TYPE_NORMAL NewSettingViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView, NSInteger section) {
    return [self cellTitles][section].count;
}



static UITableViewCell * _logos_method$_ungrouped$NewSettingViewController$tableView$cellForRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL NewSettingViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView, NSIndexPath * indexPath) {
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

    
    NSArray<NSString *> *titles = [self cellTitles][indexPath.section];
    cell.textLabel.text = titles[indexPath.row];
    
    
    if (indexPath.section == 0 && indexPath.row == 0) {
        UISwitch *switchView = [[UISwitch alloc] init];
        [switchView setOn:YES animated:NO];
        [switchView addTarget:self action:@selector(handleSwitchValueChanged:) forControlEvents:UIControlEventValueChanged];
        cell.accessoryView = switchView;
    } else {
        
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    
    return cell;
}


static void _logos_method$_ungrouped$NewSettingViewController$handleSwitchValueChanged$(_LOGOS_SELF_TYPE_NORMAL NewSettingViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UISwitch * sender) {









}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$VoIPPushKitNotifyService = objc_getClass("VoIPPushKitNotifyService"); { MSHookMessageEx(_logos_class$_ungrouped$VoIPPushKitNotifyService, @selector(isCallkitAvailable), (IMP)&_logos_method$_ungrouped$VoIPPushKitNotifyService$isCallkitAvailable, (IMP*)&_logos_orig$_ungrouped$VoIPPushKitNotifyService$isCallkitAvailable);}{ MSHookMessageEx(_logos_class$_ungrouped$VoIPPushKitNotifyService, @selector(isDeviceCallkitAvailable), (IMP)&_logos_method$_ungrouped$VoIPPushKitNotifyService$isDeviceCallkitAvailable, (IMP*)&_logos_orig$_ungrouped$VoIPPushKitNotifyService$isDeviceCallkitAvailable);}Class _logos_class$_ungrouped$MMTabBarItemView = objc_getClass("MMTabBarItemView"); { MSHookMessageEx(_logos_class$_ungrouped$MMTabBarItemView, @selector(reloadIconImage), (IMP)&_logos_method$_ungrouped$MMTabBarItemView$reloadIconImage, (IMP*)&_logos_orig$_ungrouped$MMTabBarItemView$reloadIconImage);}{ MSHookMessageEx(_logos_class$_ungrouped$MMTabBarItemView, @selector(initWithItem:frame:), (IMP)&_logos_method$_ungrouped$MMTabBarItemView$initWithItem$frame$, (IMP*)&_logos_orig$_ungrouped$MMTabBarItemView$initWithItem$frame$);}Class _logos_class$_ungrouped$NewSettingViewController = objc_getClass("NewSettingViewController"); { MSHookMessageEx(_logos_class$_ungrouped$NewSettingViewController, @selector(reloadTableData), (IMP)&_logos_method$_ungrouped$NewSettingViewController$reloadTableData, (IMP*)&_logos_orig$_ungrouped$NewSettingViewController$reloadTableData);}{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$NewSettingViewController, @selector(handleSetting), (IMP)&_logos_method$_ungrouped$NewSettingViewController$handleSetting, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(NSInteger), strlen(@encode(NSInteger))); i += strlen(@encode(NSInteger)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(UITableView *), strlen(@encode(UITableView *))); i += strlen(@encode(UITableView *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$NewSettingViewController, @selector(numberOfSectionsInTableView:), (IMP)&_logos_method$_ungrouped$NewSettingViewController$numberOfSectionsInTableView$, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(NSString *), strlen(@encode(NSString *))); i += strlen(@encode(NSString *)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(UITableView *), strlen(@encode(UITableView *))); i += strlen(@encode(UITableView *)); memcpy(_typeEncoding + i, @encode(NSInteger), strlen(@encode(NSInteger))); i += strlen(@encode(NSInteger)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$NewSettingViewController, @selector(tableView:titleForHeaderInSection:), (IMP)&_logos_method$_ungrouped$NewSettingViewController$tableView$titleForHeaderInSection$, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(NSArray<NSArray<NSString *> *> *), strlen(@encode(NSArray<NSArray<NSString *> *> *))); i += strlen(@encode(NSArray<NSArray<NSString *> *> *)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$NewSettingViewController, @selector(cellTitles), (IMP)&_logos_method$_ungrouped$NewSettingViewController$cellTitles, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(NSInteger), strlen(@encode(NSInteger))); i += strlen(@encode(NSInteger)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(UITableView *), strlen(@encode(UITableView *))); i += strlen(@encode(UITableView *)); memcpy(_typeEncoding + i, @encode(NSInteger), strlen(@encode(NSInteger))); i += strlen(@encode(NSInteger)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$NewSettingViewController, @selector(tableView:numberOfRowsInSection:), (IMP)&_logos_method$_ungrouped$NewSettingViewController$tableView$numberOfRowsInSection$, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(UITableViewCell *), strlen(@encode(UITableViewCell *))); i += strlen(@encode(UITableViewCell *)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(UITableView *), strlen(@encode(UITableView *))); i += strlen(@encode(UITableView *)); memcpy(_typeEncoding + i, @encode(NSIndexPath *), strlen(@encode(NSIndexPath *))); i += strlen(@encode(NSIndexPath *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$NewSettingViewController, @selector(tableView:cellForRowAtIndexPath:), (IMP)&_logos_method$_ungrouped$NewSettingViewController$tableView$cellForRowAtIndexPath$, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(UISwitch *), strlen(@encode(UISwitch *))); i += strlen(@encode(UISwitch *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$NewSettingViewController, @selector(handleSwitchValueChanged:), (IMP)&_logos_method$_ungrouped$NewSettingViewController$handleSwitchValueChanged$, _typeEncoding); }} }
#line 198 "/Users/macxk/Desktop/UI调试/BoxHook/BoxHook/wechatHook.xm"
