//
//  SVBaseBar.h
//  SVBase
//
//  Created by aresoft on 15/8/21.
//  Copyright © 2015年 宋金杰. All rights reserved.
//

/**
 *  @author SVampire, 15-08-21 13:08:05
 *
 *  通用导航栏
 */

#import <UIKit/UIKit.h>

@class SVBaseBar;

@protocol SVBaseBarDelegate <NSObject>

@optional
/**
 *  @author SVampire, 15-08-21 13:08:19
 *
 *  左侧按钮点击的监听事件
 *
 *  @param bar    导航栏
 *  @param button 左侧按钮
 */
- (void)uiBar:(SVBaseBar *)bar leftButtonOnClick:(UIButton *)button;

/**
 *  @author SVampire, 15-08-21 13:08:46
 *
 *  右侧按钮点击的监听事件
 *
 *  @param bar    导航栏
 *  @param button 右侧按钮
 */
- (void)uiBar:(SVBaseBar *)bar rightButtonOnClick:(UIButton *)button;

@end

@interface SVBaseBar : UIView

@property (nonatomic, assign) id<SVBaseBarDelegate>delegate;//导航栏代理

@property (nonatomic, strong) UIButton *leftButton;//左侧按钮
@property (nonatomic, strong) UIButton *rightButton;//右侧按钮
@property (nonatomic, strong) UILabel *titleLabel;//标题

@end
