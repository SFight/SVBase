//
//  SVBaseTabBarView.h
//  SVBase
//
//  Created by aresoft on 15/8/21.
//  Copyright © 2015年 宋金杰. All rights reserved.
//

/**
 *  @author SVampire, 15-08-21 16:08:21
 *
 *  自定义基类tabbar视图
 */

#import <UIKit/UIKit.h>

@class SVBaseTabBarView;

@protocol SVBaseTabBarViewDelegate <NSObject>

@optional
/**
 *  @author SVampire, 15-08-21 16:08:33
 *
 *  tabbar上的item点击监听事件
 *
 *  @param tabBarView tabbar视图
 *  @param index      要显示的控制器的位置
 */
- (void)tabBarView:(SVBaseTabBarView *)tabBarView clickAtIndex:(NSInteger)index;

@end

@interface SVBaseTabBarView : UIView

@property (nonatomic, assign) id<SVBaseTabBarViewDelegate>delegate;//tabbar视图的代理

/**
 *  @author SVampire, 15-08-21 16:08:59
 *
 *  设置tabbar的item
 *
 *  @param tabBarItems 带有SVBaseTabBarItem的数组
 */
- (void)setTabBarItems:(NSMutableArray *)tabBarItems;

/**
 *  @author SVampire, 15-08-21 17:08:35
 *
 *  设置选中第几个控制器
 *
 *  @param selectedIndex 第几个是选中状态
 */
- (void)setSelectedIndex:(NSInteger)selectedIndex;

@end
