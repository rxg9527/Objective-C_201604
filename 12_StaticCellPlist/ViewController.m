//
//  ViewController.m
//  12_StaticCellPlist
//
//  Created by Yuen on 16/4/19.
//  Copyright © 2016年 Yuen. All rights reserved.
//

#import "ViewController.h"
#import "XGCell.h"


@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) UITableView *tableView;

@end


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    self.automaticallyAdjustsScrollViewInsets = NO;
    self.tableView.hidden = NO;
}

- (UITableView *)tableView
{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 64, self.view.bounds.size.width, self.view.bounds.size.height - 64) style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        [self.view addSubview:_tableView];
    }
    return _tableView;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        return 5;
    } else if (section == 1) {
        return 5;
    }
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdenfier = @"cell";
    XGCell *cell = [self.tableView dequeueReusableCellWithIdentifier:cellIdenfier];
    if (cell == nil) {
        cell = [[XGCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellIdenfier];
    }

    if (indexPath.section == 0) { // (第0组)
        if (indexPath.row == 0) { // 第0组的第0行
            cell.textLabel.text = @"标题:";
            cell.detailTextLabel.text = @"测试数据";
        } else if (indexPath.row == 1) { // 第0组的第1行
            cell.textLabel.text = @"经销商名称:";
            cell.detailTextLabel.text = @"测试经销商";
        } else if (indexPath.row == 2) {
            cell.textLabel.text = @"申请日期:";
            cell.detailTextLabel.text = @"测试日期";
        } else if (indexPath.row == 3) {
            cell.textLabel.text = @"结束日期:";
            cell.detailTextLabel.text = @"测试日期";
        } else if (indexPath.row == 4) {
            cell.textLabel.text = @"申请金额:";
            cell.detailTextLabel.text = @"测试金额";
        }
    } else if (indexPath.section == 1) {
        if (indexPath.row == 0) { // 第0组的第0行
            cell.textLabel.text = @"门店:";
            cell.detailTextLabel.text = @"测试门店";
        } else if (indexPath.row == 1) { // 第0组的第1行
            cell.textLabel.text = @"联系人名称:";
            cell.detailTextLabel.text = @"测试联系人";
        } else if (indexPath.row == 2) {
            cell.textLabel.text = @"费用类型:";
            cell.detailTextLabel.text = @"测试费用类型";
        } else if (indexPath.row == 3) {
            cell.textLabel.text = @"商品:";
            cell.detailTextLabel.text = @"测试商品";
        } else if (indexPath.row == 4) {
            cell.textLabel.text = @"数量:";
            cell.detailTextLabel.text = @"测试数量";
        }
    }

    return cell;
}

@end
