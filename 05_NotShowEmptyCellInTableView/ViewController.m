//
//  ViewController.m
//  05_NotShowEmptyCellInTableView
//
//  Created by Yuen on 16/4/16.
//  Copyright © 2016年 Yuen. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITableView *testTableView;

@end


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    /**
     *  不让那些空的cell显示
     */
    self.testTableView.tableFooterView = [UIView new];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
