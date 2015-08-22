//
//  SVBaseTabBarView.m
//  SVBase
//
//  Created by aresoft on 15/8/21.
//  Copyright © 2015年 宋金杰. All rights reserved.
//

#import "SVBaseTabBarView.h"
#import "SVBaseTabBarItem.h"

@interface SVBaseTabBarView()

@property (nonatomic, strong) NSMutableArray *tabBarItems;//tabBar上的item数组
@property (nonatomic, strong) NSMutableArray *tabBarButtons;//tabbar视图上添加的按钮数组

@end

@implementation SVBaseTabBarView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        //TODO customer inilization
        self.backgroundColor = [UIColor purpleColor];
    }
    return self;
}

- (void)setTabBarItems:(NSMutableArray *)tabBarItems
{
    _tabBarItems = tabBarItems;
    [self initViews];
}

- (void)setSelectedIndex:(NSInteger)selectedIndex
{
    for (UIButton *button in self.tabBarButtons) {
        if (button.tag == selectedIndex) {
            button.selected = YES;
        }
    }
}

- (void)initViews
{
    CGFloat originX = 0;
    CGFloat originY = 0;
    CGFloat width = CGRectGetWidth(self.frame)/self.tabBarItems.count;
    CGFloat height = CGRectGetHeight(self.frame);
    
    _tabBarButtons = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < self.tabBarItems.count; i++) {
        originX = width * i;
        SVBaseTabBarItem *item = [self.tabBarItems objectAtIndex:i];
        UIButton *button = [self buttonWithFrame:CGRectMake(originX, originY, width, height) tabBarItem:item tag:i];
        [self addSubview:button];
        
        [self.tabBarButtons addObject:button];
    }
}

- (UIButton *)buttonWithFrame:(CGRect)frame tabBarItem:(SVBaseTabBarItem *)baseTabBarItem tag:(NSInteger)tag
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = frame;
    button.tag = tag;
    [button setTitle:baseTabBarItem.title forState:UIControlStateNormal];
    [button setTitleColor:baseTabBarItem.normalTitleColor forState:UIControlStateNormal];
    [button setTitleColor:baseTabBarItem.highlightedTitleColor forState:UIControlStateHighlighted];
    [button setTitleColor:baseTabBarItem.selectedTitleColor forState:UIControlStateSelected];
    [button setImage:baseTabBarItem.normalImage forState:UIControlStateNormal];
    [button setImage:baseTabBarItem.highlightedImage forState:UIControlStateHighlighted];
    [button setImage:baseTabBarItem.selectedImage forState:UIControlStateSelected];
    
    [button addTarget:self action:@selector(tabBarItemOnClick:) forControlEvents:UIControlEventTouchUpInside];
    return button;
}

#pragma mark - SEL
- (void)tabBarItemOnClick:(UIButton *)button
{
    for (UIButton *btn in self.tabBarButtons) {
        btn.selected = btn == button ? YES : NO;
    }
    
    if (self.delegate) {
        [self.delegate tabBarView:self clickAtIndex:button.tag];
    }
}

@end
