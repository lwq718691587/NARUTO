//
//  TRMenuViewController.m
//  TLBS
//
//  Created by tarena on 14-9-17.
//  Copyright (c) 2014年 tarena. All rights reserved.
//

#import "TRMenuViewController.h"
#import "TRMainTabBarViewController.h"
#import "AppDelegate.h"
#import "CircleMenuViewController.h"
#import "Constants.h"
@interface TRMenuViewController ()
@property (nonatomic, strong)NSArray *menuImageNames;
@property (nonatomic, strong)NSArray *menuTitles;
@end

@implementation TRMenuViewController



- (void)viewDidLoad
{
    [super viewDidLoad];

    self.menuImageNames = @[@"05侧滑分栏_03.png",@"05侧滑分栏_12.png",@"05侧滑分栏_14.png",@"05侧滑分栏_17.png",@"adfasd",@"333"];
    self.menuTitles = @[@"人物介绍",@"忍术介绍",@"忍具介绍",@"尾兽介绍",@"更多内容",@"222"];
    
    //设置背景颜色
    self.tableView.backgroundColor = [UIColor colorWithRed:30.0/255 green:30.0/255 blue:30.0/255 alpha:1];
    [self.tableView setContentInset:UIEdgeInsetsMake(20, 0, 0, 0)];
 
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return self.menuTitles.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    cell.textLabel.text = self.menuTitles[indexPath.row];
    cell.imageView.image = [UIImage imageNamed:self.menuImageNames[indexPath.row]];
    
    [cell setBackgroundColor:[UIColor clearColor]];
    cell.textLabel.textColor = [UIColor colorWithRed:86.0/255 green:86.0/255 blue:86.0/255 alpha:1];
    //设置选中背景颜色
    cell.selectedBackgroundView = [[UIView alloc]initWithFrame:cell.bounds];
    cell.selectedBackgroundView.backgroundColor = [UIColor colorWithRed:6.0/255 green:61.0/255 blue:209.0/255 alpha:1];
    //文本高亮颜色
    cell.textLabel.highlightedTextColor = [UIColor whiteColor];
    
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    AppDelegate *app = [UIApplication sharedApplication].delegate;
    app.mainTabbarController.selectedIndex = indexPath.row;
    //重新加载一下中间显示的内容
    [app.drawer reloadCenterViewControllerUsingBlock:Nil];
    
}


@end
