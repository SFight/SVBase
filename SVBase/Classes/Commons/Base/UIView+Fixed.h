//
//  UIView+Fixed.h
//  SVBase
//
//  Created by aresoft on 15/8/21.
//  Copyright © 2015年 宋金杰. All rights reserved.
//

/**
 *  @author SVampire, 15-08-21 13:08:09
 *
 *  扩展UIView，手动等比例缩放
 *
 *  @param Fixed 扩展类类名
 *
 */

#import <UIKit/UIKit.h>

#define ScreenHeight        [[UIScreen mainScreen] bounds].size.height      //屏幕高度
#define ScreenWidth         [[UIScreen mainScreen] bounds].size.width       //屏幕宽度

#define ScreenWidth6P           375.0f          //IPhone6宽度
#define ScreenHeight6P          667.0f          //IPhone6高度

#define SWS(a)          (CGFloat)(a)*ScreenWidth/ScreenWidth6P              //相对IPhone6宽度拉伸
#define SHS(a)          (CGFloat)(a)*ScreenHeight/ScreenHeight6P            //相对IPhone6高度拉伸

@interface UIView (Fixed)

@end
