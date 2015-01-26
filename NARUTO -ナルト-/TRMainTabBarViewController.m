//
//  TRMainTabBarViewController.m
//  TLBS
//
//  Created by tarena on 14-9-17.
//  Copyright (c) 2014年 tarena. All rights reserved.
//

#import "TRMainTabBarViewController.h"

@interface TRMainTabBarViewController ()

@end

@implementation TRMainTabBarViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.tabBar.hidden = YES;
    

}
- (void)drawerControllerWillOpen:(ICSDrawerController *)drawerController{
    self.view.userInteractionEnabled = NO;
    
}
-(void)drawerControllerDidClose:(ICSDrawerController *)drawerController{
    self.view.userInteractionEnabled = YES;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
