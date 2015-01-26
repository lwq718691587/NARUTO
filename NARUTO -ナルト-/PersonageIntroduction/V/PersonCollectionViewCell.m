//
//  PersonCollectionViewCell.m
//  NARUTO -ナルト-
//
//  Created by liuweiqiang on 15-1-21.
//  Copyright (c) 2015年 刘伟强. All rights reserved.
//

#import "PersonCollectionViewCell.h"

@implementation PersonCollectionViewCell

-(void)awakeFromNib
{
    //设置边框
    self.contentView.layer.borderWidth = 2.0f;
    self.contentView.layer.borderColor = [UIColor whiteColor].CGColor;
    self.layer.cornerRadius = 10.0;
    self.layer.masksToBounds = YES;
}

@end
