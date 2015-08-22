//
//  SVBaseView.h
//  SVBase
//
//  Created by aresoft on 15/8/21.
//  Copyright © 2015年 宋金杰. All rights reserved.
//

/**
 *  @author SVampire, 15-08-21 11:08:45
 *
 *  基类视图，所有代码初始的视图均继承自此类
 */

#import <UIKit/UIKit.h>

@class SVBaseBar;

@interface SVBaseView : UIView

@property (nonatomic, strong) UIView *statusView;//状态栏视图
@property (nonatomic, strong) SVBaseBar *bar;//导航栏
@property (nonatomic, strong) UIView *contentView;//内容视图
@property (nonatomic, strong) UIScrollView *containerView;//滚动的容器视图

@end
