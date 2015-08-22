//
//  SVBaseTabBarUtils.m
//  SVBase
//
//  Created by aresoft on 15/8/21.
//  Copyright © 2015年 宋金杰. All rights reserved.
//

#import "SVBaseTabBarUtils.h"
#import "SVBaseTabBarViewController.h"
#import "SVBaseTabBarItem.h"

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface SVBaseTabBarUtils()<UITabBarControllerDelegate>


@end

@implementation SVBaseTabBarUtils

- (SVBaseTabBarViewController *)baseTabBarController
{
    SVBaseTabBarViewController *baseTabVC = [[SVBaseTabBarViewController alloc] init];
    baseTabVC.delegate = self;
    
    NSMutableArray *controllers = [[NSMutableArray alloc] init];
    
    FirstViewController *homePageVC = [[FirstViewController alloc] init];
    UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:homePageVC];
    [controllers addObject:nav1];
    
    SecondViewController *fancyFundVC = [[SecondViewController alloc] init];
    UINavigationController *nav2 = [[UINavigationController alloc] initWithRootViewController:fancyFundVC];
    [controllers addObject:nav2];
   
    NSMutableArray *tabBarItems = [[NSMutableArray alloc] init];

    /**
     暂时将title置空，因为是在按钮上设置标题，图片，如果上下排列的话，需要修改baseTabBarView
     */
    SVBaseTabBarItem *item1 = [[SVBaseTabBarItem alloc] initWithTitle:@"" normalTitleColor:[UIColor blackColor] highlightedTitleColor:[UIColor redColor] selectedTitleColor:[UIColor redColor] normalImage:@"tab_homepage_normal" highlightedImage:@"tab_homePage_highlighted" selectedImage:@"tab_homepage_selected"];
    [tabBarItems addObject:item1];
    
    SVBaseTabBarItem *item2 = [[SVBaseTabBarItem alloc] initWithTitle:@"" normalTitleColor:[UIColor blackColor] highlightedTitleColor:[UIColor redColor] selectedTitleColor:[UIColor redColor] normalImage:@"tab_homepage_normal" highlightedImage:@"tab_homePage_highlighted" selectedImage:@"tab_homepage_selected"];
    [tabBarItems addObject:item2];

    [baseTabVC setViewControllers:controllers tabBarItems:tabBarItems];
    [baseTabVC setSelectedIndex:0];
    
    return baseTabVC;
}

#pragma mark - UITabBarControllerDelegate
- (void)tabBarController:(nonnull UITabBarController *)tabBarController didSelectViewController:(nonnull UIViewController *)viewController
{
    NSArray *vcArray = [tabBarController viewControllers];
    UINavigationController *currentNav = nil;
    if ([viewController isKindOfClass:[UINavigationController class]]) {
        currentNav = (UINavigationController *)viewController;
    }
    
    for (UIViewController *vc in vcArray) {
        if (vc == viewController) {
            //TODO 刷新数据
            //当前的视图被重复点击
            if ([vc isKindOfClass:[UINavigationController class]]) {
                //vc是UINavigationController
                UINavigationController *nav = (UINavigationController *)vc;
                
                [nav popToRootViewControllerAnimated:NO];
                
            }
        } else {
            if ([vc isKindOfClass:[UINavigationController class]]) {
                //vc是UINavigationController
                UINavigationController *nav = (UINavigationController *)vc;
                
                [nav popToRootViewControllerAnimated:NO];
                
                nav.topViewController.view = nil;
                
            } else {
                //置空控制器下得view，以便下次点击重新加载
                vc.view = nil;
            }
            
        }
    }
    NSLog(@"点击的viewController:%@", [viewController class]);
}

@end
