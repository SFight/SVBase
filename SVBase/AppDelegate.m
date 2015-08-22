//
//  AppDelegate.m
//  SVBase
//
//  Created by aresoft on 15/8/21.
//  Copyright © 2015年 宋金杰. All rights reserved.
//

#import "AppDelegate.h"
#import "SVBaseTabBarUtils.h"

@interface AppDelegate ()

@property (nonatomic, strong) SVBaseTabBarUtils *baseTabBarUtils;

@end

@implementation AppDelegate

#pragma mark - lazyInit
- (SVBaseTabBarUtils *)baseTabBarUtils
{
    if (!_baseTabBarUtils) {
        _baseTabBarUtils = [[SVBaseTabBarUtils alloc] init];
    }
    return _baseTabBarUtils;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    [self initWindowWithLaunchOptions:launchOptions];//初始化window
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    // Saves changes in the application's managed object context before the application terminates.
}

/**
 *  @author SVampire, 15-08-21 11:08:37
 *
 *  初始化window，根据程序启动的条件
 *
 *  @param launchOptions 程序启动的条件
 */
- (void)initWindowWithLaunchOptions:(NSDictionary *)launchOptions
{
    if (launchOptions == nil) {
        //正常启动应用程序
        _window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
        self.window.backgroundColor = [UIColor whiteColor];
        [self.window makeKeyAndVisible];
        self.window.rootViewController = (UIViewController *)[self.baseTabBarUtils baseTabBarController];
    } else {
        NSDictionary * userInfo = [launchOptions objectForKey:UIApplicationLaunchOptionsRemoteNotificationKey];
        if(userInfo) {
            //远程消息通知打开应用
        }
    }
    
}

@end
