//
//  showPersonInfoTableViewController.h
//  NARUTO -ナルト-
//
//  Created by liuweiqiang on 15-1-22.
//  Copyright (c) 2015年 刘伟强. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface showPersonInfoTableViewController : UITableViewController
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;

@property(nonatomic,copy)NSString * sex;

@end
