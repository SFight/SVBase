//
//  SVBaseTabBarUtils.h
//  SVBase
//
//  Created by aresoft on 15/8/21.
//  Copyright © 2015年 宋金杰. All rights reserved.
//

/**
 *  @author SVampire, 15-08-21 16:08:27
 *
 *  自定义的tabbar工具
 */

#import <Foundation/Foundation.h>

@class SVBaseTabBarViewController;

@interface SVBaseTabBarUtils : NSObject

/**
 *  @author SVampire, 15-08-21 16:08:42
 *
 *  获取tabbar控制器
 *
 *  @return 自定义的tabbar控制器类
 */
- (SVBaseTabBarViewController *)baseTabBarController;

@end
