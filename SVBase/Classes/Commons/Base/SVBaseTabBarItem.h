//
//  SVBaseTabBarItem.h
//  SVBase
//
//  Created by aresoft on 15/8/21.
//  Copyright © 2015年 宋金杰. All rights reserved.
//

/**
 *  @author SVampire, 15-08-21 16:08:57
 *
 *  自定义tabbar上的每一个item，标题、普通、高亮、选中状态的图片
 */

#import <Foundation/Foundation.h>

@interface SVBaseTabBarItem : NSObject

@property (nonatomic, strong, readonly) NSString *title;//标题
@property (nonatomic, strong, readonly) UIColor *normalTitleColor;//普通标题颜色
@property (nonatomic, strong, readonly) UIColor *highlightedTitleColor;//高亮标题颜色
@property (nonatomic, strong, readonly) UIColor *selectedTitleColor;//选中标题颜色
@property (nonatomic, strong, readonly) UIImage *normalImage;//普通状态图片
@property (nonatomic, strong, readonly) UIImage *highlightedImage;//高亮状态的图片
@property (nonatomic, strong, readonly) UIImage *selectedImage;//选中状态的图片

/**
 *  @author SVampire, 15-08-21 16:08:34
 *
 *  初始化tabbar视图的item
 *
 *  @param title                 标题
 *  @param normalTitleColor      普通状态标题衍射
 *  @param highlightedTitleColor 高亮状态标题颜色
 *  @param selectedTitleColor    选中状态标题颜色
 *  @param normalImage           普通状态图片
 *  @param highlightedImage      高亮状态图片
 *  @param selectedImage         选中状态图片
 *
 *  @return id type
 */
- (id)initWithTitle:(NSString *)title
                normalTitleColor:(UIColor *)normalTitleColor
                highlightedTitleColor:(UIColor *)highlightedTitleColor
                selectedTitleColor:(UIColor *)selectedTitleColor
                normalImage:(NSString *)normalImage
                highlightedImage:(NSString *)highlightedImage
                selectedImage:(NSString *)selectedImage;

@end
