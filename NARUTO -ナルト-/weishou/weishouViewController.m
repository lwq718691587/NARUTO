//
//  weishouViewController.m
//  NARUTO -ナルト-
//
//  Created by 刘伟强 on 15/1/27.
//  Copyright (c) 2015年 刘伟强. All rights reserved.
//

#import "weishouViewController.h"
#import "weishouCollectionViewCell.h"
#import "weishouInfoViewController.h"
@interface weishouViewController ()
@property (weak, nonatomic) IBOutlet UICollectionView *showCollectionView;

@property(nonatomic,strong)NSArray * dataArr;

@end

@implementation weishouViewController

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
    
    static NSString *collectionCellID = @"weishou";
    weishouCollectionViewCell *cell = (weishouCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:collectionCellID forIndexPath:indexPath];
 
    
    return cell;
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"showWeishou" sender:[NSString stringWithFormat:@"%@",self.dataArr[indexPath.row]]];
}
//跳转页面传参 把点击的名单对象传递过去
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier  isEqual: @"showWeishou"] )
    {
        weishouInfoViewController *vc = segue.destinationViewController;
        
//        vc.sex = sender;
    }
}

@end
