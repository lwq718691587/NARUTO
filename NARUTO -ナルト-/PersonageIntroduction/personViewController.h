//
//  personViewController.h
//  NARUTO -ナルト-
//
//  Created by liuweiqiang on 15-1-21.
//  Copyright (c) 2015年 刘伟强. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface personViewController : UIViewController<UICollectionViewDataSource,UICollectionViewDelegate>
@property (strong, nonatomic) IBOutlet UIImageView *bannerImageView;

@property (strong, nonatomic) IBOutlet UICollectionView *showCollectionView;

@end
