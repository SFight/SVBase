//
//  SVBaseTabBarViewController.m
//  SVBase
//
//  Created by aresoft on 15/8/21.
//  Copyright © 2015年 宋金杰. All rights reserved.
//

#import "SVBaseTabBarViewController.h"
#import "SVBaseTabBarView.h"

#define TAB_BAR_HEIGHT               SHS(50)             //tabbar视图的高度

@interface SVBaseTabBarViewController ()<SVBaseTabBarViewDelegate>

@property (nonatomic, strong) SVBaseTabBarView *baseTabBarView;//tabbar视图

@end

@implementation SVBaseTabBarViewController

- (id)initWithNibName:(nullable NSString *)nibNameOrNil bundle:(nullable NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        //TODO customer inilization
    }
    return self;
}

- (void)loadView
{
    [super loadView];
    _baseTabBarView = [[SVBaseTabBarView alloc] initWithFrame:CGRectMake(0, CGRectGetHeight(self.view.frame) - TAB_BAR_HEIGHT, CGRectGetWidth(self.view.frame), TAB_BAR_HEIGHT)];
    self.baseTabBarView.delegate = self;
    [self.view addSubview:self.baseTabBarView];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.tabBar.hidden = YES;
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 设置选中第几个按钮
- (void)setSelectedIndex:(NSUInteger)selectedIndex
{
    [super setSelectedIndex:selectedIndex];
    [self.baseTabBarView setSelectedIndex:selectedIndex];
}

#pragma mark - 设置viewControllers和tabBarItems
- (void)setViewControllers:(NSMutableArray *)viewControllers tabBarItems:(NSMutableArray *)tabBarItems
{
    [super setViewControllers:viewControllers];
    [self.baseTabBarView setTabBarItems:tabBarItems];
}

#pragma mark - QGGBaseTabBarViewDelegate
- (void)tabBarView:(SVBaseTabBarView *)tabBarView clickAtIndex:(NSInteger)index
{
    self.selectedIndex = index;
    UIViewController *vc = [self.viewControllers objectAtIndex:index];
    if (self.delegate) {
        [self.delegate tabBarController:self didSelectViewController:vc];
    }
}

#pragma mark - 设置tabbar的隐藏动画
- (void)hiddenTabBar:(BOOL)hidden
{
    if (self.baseTabBarView.hidden == hidden) {
        return;
    }
    
    
    if (hidden) {
        [UIView animateWithDuration:0.27 animations:^{
            CGRect frame = self.baseTabBarView.frame;
            frame.origin.y = frame.origin.y + TAB_BAR_HEIGHT;
            self.baseTabBarView.frame = frame;
            
        } completion:^(BOOL finished) {
            self.baseTabBarView.hidden = YES;
            
        }];
    } else  {
        [UIView animateWithDuration:0.27 animations:^{
            self.baseTabBarView.hidden = NO;
            
            CGRect frame = self.baseTabBarView.frame;
            frame.origin.y = CGRectGetHeight(self.view.frame) - TAB_BAR_HEIGHT;
            self.baseTabBarView.frame = frame;
            
        } completion:^(BOOL finished) {
        }];
    }
}


@end
