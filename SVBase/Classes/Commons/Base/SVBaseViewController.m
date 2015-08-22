//
//  SVBaseViewController.m
//  SVBase
//
//  Created by aresoft on 15/8/21.
//  Copyright © 2015年 宋金杰. All rights reserved.
//

#import "SVBaseViewController.h"
#import "SVBaseView.h"

@interface SVBaseViewController ()

@property (nonatomic, strong) SVBaseView *baseView;//基类视图

@end

@implementation SVBaseViewController

#pragma mark - initView
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
    _baseView = [[SVBaseView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.view = self.baseView;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = YES;
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

@end
