//
//  SVBaseTabBarViewController.h
//  SVBase
//
//  Created by aresoft on 15/8/21.
//  Copyright © 2015年 宋金杰. All rights reserved.
//

/**
 *  @author SVampire, 15-08-21 16:08:59
 *
 *  自定义tabbar控制器，继承自UITabBarController
 */

#import <UIKit/UIKit.h>

@interface SVBaseTabBarViewController : UITabBarController

/**
 *  @author SVampire, 15-08-21 16:08:16
 *
 *  设置tabbar控制器的子控制器
 *
 *  @param viewControllers 子控制器数组
 *  @param tabBarItems     tabbar控制器视图上的item数组
 */
- (void)setViewControllers:(NSMutableArray *)viewControllers tabBarItems:(NSMutableArray *)tabBarItems;

@end
