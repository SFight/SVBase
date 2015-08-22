//
//  SVBaseBar.m
//  SVBase
//
//  Created by aresoft on 15/8/21.
//  Copyright © 2015年 宋金杰. All rights reserved.
//

#import "SVBaseBar.h"

#define LEFT_BUTTON_WIDTH               SWS(50)     //左侧按钮的宽度
#define RIGHT_BUTTON_WIDTH              SWS(50)     //右侧按钮的宽度

@implementation SVBaseBar

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
    CGFloat width = LEFT_BUTTON_WIDTH;
    CGFloat height = CGRectGetHeight(self.frame);
    _leftButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.leftButton.frame = CGRectMake(originX, originY, width, height);
    [self.leftButton addTarget:self action:@selector(leftButtonOnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:self.leftButton];
    
    originX = CGRectGetWidth(self.frame) - RIGHT_BUTTON_WIDTH;
    originY = 0;
    width = RIGHT_BUTTON_WIDTH;
    height = CGRectGetHeight(self.frame);
    _rightButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.rightButton.frame = CGRectMake(originX, originY, width, height);
    [self.rightButton addTarget:self action:@selector(rightButtonOnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:self.rightButton];
    
    originX = CGRectGetMaxX(self.leftButton.frame);
    originY = 0;
    width = CGRectGetWidth(self.frame) - LEFT_BUTTON_WIDTH - RIGHT_BUTTON_WIDTH;
    height = CGRectGetHeight(self.frame);
    _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(originX, originY, width, height)];
    self.titleLabel.font = [UIFont systemFontOfSize:NORMAL_TEXT_SIZE22];
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.titleLabel.textColor = [UIColor blackColor];
    [self addSubview:self.titleLabel];
    
}

#pragma mark - SEL
- (void)leftButtonOnClick:(UIButton *)button
{
    if (self.delegate) {
        [self.delegate uiBar:self leftButtonOnClick:button];
    }
}

- (void)rightButtonOnClick:(UIButton *)button
{
    if (self.delegate) {
        [self.delegate uiBar:self rightButtonOnClick:button];
    }
}

@end
