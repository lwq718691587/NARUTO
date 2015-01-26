//
//  AppDelegate.h
//  NARUTO -ナルト-
//
//  Created by liuweiqiang on 15-1-21.
//  Copyright (c) 2015年 刘伟强. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "ICSDrawerController.h"
#import "TRMainTabBarViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

@property (nonatomic, strong)ICSDrawerController *drawer;
@property (nonatomic, strong)TRMainTabBarViewController *mainTabbarController;


- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;


@end

