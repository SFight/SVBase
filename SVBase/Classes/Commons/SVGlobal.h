//
//  SVGlobal.h
//  SVBase
//
//  Created by aresoft on 15/8/21.
//  Copyright © 2015年 宋金杰. All rights reserved.
//

/**
 *  @author SVampire, 15-08-21 14:08:59
 *
 *  通用全局文件
 */

#import <Foundation/Foundation.h>

/**
 自定义字体大小
 */
#define NORMAL_TEXT_SIZE10          SHS(10)          //通用10号字体
#define NORMAL_TEXT_SIZE11          SHS(11)          //通用11号字体
#define NORMAL_TEXT_SIZE12          SHS(12)          //通用12号字体
#define NORMAL_TEXT_SIZE13          SHS(13)          //通用13号字体
#define NORMAL_TEXT_SIZE14          SHS(14)          //通用14号字体
#define NORMAL_TEXT_SIZE15          SHS(15)          //通用15号字体
#define NORMAL_TEXT_SIZE16          SHS(16)          //通用16号字体
#define NORMAL_TEXT_SIZE17          SHS(17)          //通用17号字体
#define NORMAL_TEXT_SIZE18          SHS(18)          //通用18号字体
#define NORMAL_TEXT_SIZE19          SHS(19)          //通用19号字体
#define NORMAL_TEXT_SIZE20          SHS(20)          //通用20号字体
#define NORMAL_TEXT_SIZE21          SHS(21)          //通用21号字体
#define NORMAL_TEXT_SIZE22          SHS(22)          //通用22号字体
#define NORMAL_TEXT_SIZE31          SHS(31)          //通用31号字体
#define NORMAL_TEXT_SIZE32          SHS(32)          //通用32号字体

/**
 *  @author SVampire, 15-08-21 14:08:15
 *
 *  自定义RGB格式的颜色
 *
 *  @param r 红色
 *  @param g 绿色
 *  @param b 蓝色
 *
 *  @return UIColor
 */
#define RGBCOLOR(r,g,b)         [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1]
#define RGBACOLOR(r,g,b,a)      [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]

#define tabBarBgColor           RGBCOLOR(241, 245, 247)         //tabbar背景颜色
#define statusBarBgColor        RGBCOLOR(255, 87, 35)           //状态栏背景颜色
#define navigationBarBgColor    RGBCOLOR(255, 87, 35)           //导航栏背景颜色


@interface SVGlobal : NSObject

@end
