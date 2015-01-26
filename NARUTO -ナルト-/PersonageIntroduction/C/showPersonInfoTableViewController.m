//
//  showPersonInfoTableViewController.m
//  NARUTO -ナルト-
//
//  Created by liuweiqiang on 15-1-22.
//  Copyright (c) 2015年 刘伟强. All rights reserved.
//

#import "showPersonInfoTableViewController.h"

@interface showPersonInfoTableViewController ()

@property(nonatomic,strong)NSArray * dataArr;

@end

@implementation showPersonInfoTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dataArr = @[@"忍术",@"忍具",@"家族",@"所属村落",@"任务简介"];
    self.nameLabel.text = [NSString stringWithFormat:@"%@",self.sex];
    self.tableView.scrollEnabled =NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

////更新tableView数据
//-(void)upDate
//{
// 
//}
//设置row的个数
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArr.count;
}
//设置cell的内容
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * cells = @"cell";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cells];
    if(!cell)
    {
        //不用注册 通过xib去加载自定义的Cell
        cell = [[[NSBundle mainBundle] loadNibNamed:@"cell" owner:self options:Nil] lastObject];
    }
    cell.textLabel.text = self.dataArr[indexPath.row];
    return cell;
}
//
//
//-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
//    pickLotteryModel *list = self.pickLotteryArr[indexPath.row];
//    
//    [self performSegueWithIdentifier:@"aaaaa" sender:list];
//    [self.tableView deselectRowAtIndexPath:indexPath animated:NO];
//}
//
//#pragma mark - Navigation
//
////跳转页面传参 把点击的名单对象传递过去
//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
//{
//    //    if ([segue.identifier  isEqual: @"aaaaa"] )
//    //    {
//    //        TableViewController *vc = segue.destinationViewController;
//    //
//    //        vc.info = sender;
//    //
//    //    }
//    
//}



@end
