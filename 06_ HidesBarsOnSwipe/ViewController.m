//
//  ViewController.m
//  06_ HidesBarsOnSwipe
//
//  Created by Yuen on 16/4/16.
//  Copyright © 2016年 Yuen. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *scrollViewContentSizeHeight;

@end


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.scrollViewContentSizeHeight.constant = 1000;
    self.scrollView.backgroundColor = [UIColor redColor];

    /**
     *  像safari一样滑动的时候隐藏navigationbar
     */
    self.navigationController.hidesBarsOnSwipe = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
