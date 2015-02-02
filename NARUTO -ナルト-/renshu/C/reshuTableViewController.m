//
//  reshuTableViewController.m
//  NARUTO -ナルト-
//
//  Created by 刘伟强 on 15/2/2.
//  Copyright (c) 2015年 刘伟强. All rights reserved.
//

#import "reshuTableViewController.h"
#import "renshuInfoViewController.h"
@interface reshuTableViewController ()

@end

@implementation reshuTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.backgroundColor = [UIColor redColor];
    self.tableView.tableHeaderView = [self createHeaderView];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UIView *)createHeaderView
{
    UIView * headerView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 50)];
    UILabel * label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 320, 50)];
    label.text = @"添加搜索功能";
    label.backgroundColor = [UIColor yellowColor];
    [headerView addSubview:label];
    return headerView;
}

//更新tableView数据
-(void)upDate
{
    
}
//设置row的个数
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}
//设置cell的内容
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *PickViewCell=@"PickViewCell";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:PickViewCell];
    if (cell==nil) {
        cell = [[UITableViewCell  alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:PickViewCell];
    }
    cell.imageView.image = [UIImage imageNamed:@"11x5@2x.png"];
    cell.textLabel.text = @"多重影分身之术";
    cell.detailTextLabel.text = @"鸣人的成名之书";
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //pickLotteryModel *list = self.pickLotteryArr[indexPath.row];
    
    //[self performSegueWithIdentifier:@"reshuInfo" sender:list];
    [self.tableView deselectRowAtIndexPath:indexPath animated:NO];
    
}

#pragma mark - Navigation

//跳转页面传参 把点击的名单对象传递过去
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
        if ([segue.identifier  isEqual: @"reshuInfo"] )
        {
            renshuInfoViewController *vc = segue.destinationViewController;
    
            
    
        }
    
}
@end
