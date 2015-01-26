//
//  personViewController.m
//  NARUTO -ナルト-
//
//  Created by liuweiqiang on 15-1-21.
//  Copyright (c) 2015年 刘伟强. All rights reserved.
//

#import "personViewController.h"
#import "PersonCollectionViewCell.h"
#import "showPersonInfoTableViewController.h"
@interface personViewController ()

@property(nonatomic,strong)NSArray * dataArr;

@end

@implementation personViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.showCollectionView.delegate = self;
    self.showCollectionView.dataSource = self;
    self.dataArr = @[@"0",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9"];
        // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.dataArr.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *collectionCellID = @"PersonCollectionViewCell";
    PersonCollectionViewCell *cell = (PersonCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:collectionCellID forIndexPath:indexPath];
    cell.personImageView.image = [UIImage imageNamed:@"11x5@2x"];
    
     cell.personNameLabel.text = self.dataArr[indexPath.row];
    
    return cell;
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
   [self performSegueWithIdentifier:@"showPerson" sender:[NSString stringWithFormat:@"%@",self.dataArr[indexPath.row]]];
}
//跳转页面传参 把点击的名单对象传递过去
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier  isEqual: @"showPerson"] )
    {
        showPersonInfoTableViewController *vc = segue.destinationViewController;

        vc.sex = sender;
    }
}


@end
