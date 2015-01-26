//
//  TRMainTabBarViewController.h
//  TLBS
//
//  Created by tarena on 14-9-17.
//  Copyright (c) 2014年 tarena. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ICSDrawerController.h"
@interface TRMainTabBarViewController : UITabBarController<ICSDrawerControllerChild, ICSDrawerControllerPresenting>
@property(nonatomic, weak) ICSDrawerController *drawer;
@end
