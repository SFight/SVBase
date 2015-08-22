//
//  SVBaseTabBarItem.m
//  SVBase
//
//  Created by aresoft on 15/8/21.
//  Copyright © 2015年 宋金杰. All rights reserved.
//

#import "SVBaseTabBarItem.h"

@implementation SVBaseTabBarItem

- (id)initWithTitle:(NSString *)title normalTitleColor:(UIColor *)normalTitleColor highlightedTitleColor:(UIColor *)highlightedTitleColor selectedTitleColor:(UIColor *)selectedTitleColor normalImage:(NSString *)normalImage highlightedImage:(NSString *)highlightedImage selectedImage:(NSString *)selectedImage
{
    self = [super init];
    if (self) {
        //TODO customer inilization
        _title = title;
        _normalTitleColor = normalTitleColor;
        _highlightedTitleColor = highlightedTitleColor;
        _selectedTitleColor = selectedTitleColor;
        _normalImage = [UIImage imageNamed:normalImage];
        _highlightedImage = [UIImage imageNamed:highlightedImage];
        _selectedImage = [UIImage imageNamed:selectedImage];
    }
    return self;
}

@end
