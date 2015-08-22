//
//  SVBaseView.m
//  SVBase
//
//  Created by aresoft on 15/8/21.
//  Copyright © 2015年 宋金杰. All rights reserved.
//

#import "SVBaseView.h"
#import "SVBaseBar.h"

#define STATUS_BAR_HEIGHT               SHS(20)         //状态栏高度
#define NAVIGATION_BAR_HEIGHT           SHS(40)         //导航栏高度

@implementation SVBaseView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        //TODO customer inilization
        [self initViews];
    }
    return self;
}

- (void)initViews
{
    CGFloat originX = 0;
    CGFloat originY = 0;
    CGFloat width = CGRectGetWidth(self.frame);
    CGFloat height = STATUS_BAR_HEIGHT;
    _statusView = [[UIView alloc] initWithFrame:CGRectMake(originX, originY, width, height)];
    self.statusView.backgroundColor = statusBarBgColor;
    [self addSubview:self.statusView];
    
    originX = 0;
    originY = CGRectGetMaxY(self.statusView.frame);
    width = CGRectGetWidth(self.frame);
    height = NAVIGATION_BAR_HEIGHT;
    _bar = [[SVBaseBar alloc] initWithFrame:CGRectMake(originX, originY, width, height)];
    self.bar.backgroundColor = navigationBarBgColor;
    [self addSubview:self.bar];
    
    originX = 0;
    originY = CGRectGetMaxY(self.bar.frame);
    width = CGRectGetWidth(self.frame);
    height = CGRectGetHeight(self.frame) - originY;
    _contentView = [[UIView alloc] initWithFrame:CGRectMake(originX, originY, width, height)];
    [self addSubview:self.contentView];
    
    _containerView = [[UIScrollView alloc] initWithFrame:self.contentView.bounds];
    [self addSubview:self.containerView];
    
}

@end
