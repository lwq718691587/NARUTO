//
//  TRMyNavigationController.m
//  TLBS
//
//  Created by tarena on 14-9-18.
//  Copyright (c) 2014年 tarena. All rights reserved.
//

#import "TRMyNavigationController.h"

@interface TRMyNavigationController ()

@end

@implementation TRMyNavigationController



- (void)viewDidLoad
{
    [super viewDidLoad];
 
    self.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName: [UIColor whiteColor]};
    [self.navigationBar setBackgroundImage:[UIImage imageNamed:@"01全部话题_01.png"] forBarMetrics:UIBarMetricsDefault];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
