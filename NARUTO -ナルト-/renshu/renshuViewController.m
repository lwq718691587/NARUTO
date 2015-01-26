//
//  renshuViewController.m
//  NARUTO -ナルト-
//
//  Created by liuweiqiang on 15-1-22.
//  Copyright (c) 2015年 刘伟强. All rights reserved.
//

#import "renshuViewController.h"
#import "Constants.h"
#import "CircleMenuViewController.h"
@interface renshuViewController ()

@end

@implementation renshuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self govcaa];
    
    
//    [self.btn addTarget:self action:@selector(govcaa) forControlEvents:UIControlEventTouchDown];
    // Do any additional setup after loading the view.
}
-(void)govcaa
{
    
    CircleMenuViewController *circleMenuViewController = [[CircleMenuViewController alloc]initWithButtonCount:kKYCCircleMenuButtonsCount
menuSize:kKYCircleMenuSize
buttonSize:kKYCircleMenuButtonSize
buttonImageNameFormat:kKYICircleMenuButtonImageNameFormat
centerButtonSize:kKYCircleMenuCenterButtonSize
centerButtonImageName:kKYICircleMenuCenterButton
centerButtonBackgroundImageName:kKYICircleMenuCenterButtonBackground];
    self.navigationController.navigationBarHidden = NO;
    [self.navigationController pushViewController:circleMenuViewController animated:NO];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
