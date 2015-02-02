//
//  CircleMenuViewController.m
//  KYCircleMenuDemo
//
//  Created by Kjuly on 7/18/12.
//  Copyright (c) 2012 Kjuly. All rights reserved.
//

#import "CircleMenuViewController.h"
#import "Constants.h"
#import "reshuTableViewController.h"
@implementation CircleMenuViewController

- (void)dealloc {

}

- (id)init {
  if (self = [super init])
    [self setTitle:@"忍术介绍"];
    
  return self;
}

- (void)viewDidLoad {
  [super viewDidLoad];
    
    // Modify buttons' style in circle menu
  for (UIButton * button in [self.menu subviews])
    [button setAlpha:.95f];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

#pragma mark - KYCircleMenu Button Action

// Run button action depend on their tags:
//
// TAG:        1       1   2      1   2     1   2     1 2 3     1 2 3
//            \|/       \|/        \|/       \|/       \|/       \|/
// COUNT: 1) --|--  2) --|--   3) --|--  4) --|--  5) --|--  6) --|--
//            /|\       /|\        /|\       /|\       /|\       /|\
// TAG:                             3       3   4     4   5     4 5 6
//
- (void)runButtonActions:(id)sender {
  [super runButtonActions:sender];
    UIStoryboard *board = [UIStoryboard storyboardWithName: @"Main" bundle: nil];
    reshuTableViewController * vc = [board instantiateViewControllerWithIdentifier: @"aaaa"];
  
    
    [self pushViewController:vc];
    
  

}

@end
